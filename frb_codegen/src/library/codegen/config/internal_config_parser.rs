use crate::codegen::config::internal_config::{
    DartOutputPathPack, GeneratorCInternalConfig, GeneratorDartInternalConfig,
    GeneratorInternalConfig, GeneratorRustInternalConfig, InternalConfig, Namespace,
    PolisherInternalConfig,
};
use crate::codegen::parser::internal_config::{ParserInternalConfig, RustInputPathPack};
use crate::codegen::Config;
use crate::utils::path_utils::{
    find_dart_package_dir, find_rust_crate_dir, glob_path, path_to_string,
};
use anyhow::{ensure, Context, Result};
use convert_case::{Case, Casing};
use itertools::Itertools;
use log::debug;
use std::collections::HashMap;
use std::path::{Path, PathBuf};

impl InternalConfig {
    pub(crate) fn parse(config: Config) -> Result<Self> {
        let base_dir = config
            .base_dir
            .filter(|s| !s.is_empty())
            .map(PathBuf::from)
            .unwrap_or(std::env::current_dir()?);
        debug!("InternalConfig.parse base_dir={base_dir:?}");

        let rust_input_path_pack = compute_rust_input_path_pack(&config.rust_input, &base_dir)?;
        let namespaces = rust_input_path_pack.rust_input_path.keys().collect_vec();

        let rust_output_path =
            base_dir.join(&config.rust_output.map(PathBuf::from).unwrap_or_else(|| {
                fallback_rust_output_path(rust_input_path_pack.one_rust_input_path())
            }));

        let dart_output_dir: PathBuf = base_dir.join(config.dart_output);
        let dart_output_path_pack = compute_dart_output_path_pack(&dart_output_dir, &namespaces);
        let dart_class_name = compute_dart_class_name(&config.dart_class_name, &namespaces);

        let c_output_path = base_dir.join(&config.c_output);
        let duplicated_c_output_path = config
            .duplicated_c_output
            .unwrap_or_default()
            .into_iter()
            .map(|p| base_dir.join(&p))
            .collect();

        let rust_crate_dir: PathBuf =
            config
                .rust_crate_dir
                .map(PathBuf::from)
                .unwrap_or(find_rust_crate_dir(
                    rust_input_path_pack.one_rust_input_path(),
                )?);
        let dart_root = config
            .dart_root
            .map(PathBuf::from)
            .unwrap_or(find_dart_package_dir(&dart_output_dir)?);

        Ok(InternalConfig {
            parser: ParserInternalConfig {
                rust_input_path_pack,
                rust_crate_dir: rust_crate_dir.clone(),
            },
            generator: GeneratorInternalConfig {
                dart: GeneratorDartInternalConfig {
                    dart_output_path_pack,
                    dart_enums_style: config.dart_enums_style.unwrap_or(false),
                    dart_class_name,
                    dart_root,
                    use_bridge_in_method: config.use_bridge_in_method.unwrap_or(true),
                    wasm_enabled: config.wasm.unwrap_or(false),
                    dart3: config.dart3.unwrap_or(true),
                },
                rust: GeneratorRustInternalConfig {
                    rust_crate_dir,
                    rust_output_path,
                    inline_rust: config.inline_rust.unwrap_or(false),
                },
                c: GeneratorCInternalConfig {
                    c_output_path,
                    llvm_path: config
                        .llvm_path
                        .unwrap_or_else(fallback_llvm_path)
                        .into_iter()
                        .map(PathBuf::from)
                        .collect_vec(),
                    llvm_compiler_opts: config.llvm_compiler_opts.unwrap_or_else(String::new),
                    extra_headers: config.extra_headers.unwrap_or_else(String::new),
                },
            },
            polisher: PolisherInternalConfig {
                duplicated_c_output_path,
                dart_format_line_length: config.dart_format_line_length.unwrap_or(80),
                add_mod_to_lib: config.add_mod_to_lib.unwrap_or(true),
                build_runner: config.build_runner.unwrap_or(true),
                deps_check: config.deps_check.unwrap_or(true),
            },
        })
    }
}

impl RustInputPathPack {
    fn one_rust_input_path(&self) -> &Path {
        self.rust_input_path.iter().next().unwrap().1
    }
}

fn compute_rust_input_path_pack(
    raw_rust_input: &str,
    base_dir: &Path,
) -> Result<RustInputPathPack> {
    const BLACKLIST_FILE_NAMES: [&str; 1] = ["mod.rs"];

    let paths = glob_path(&base_dir.join(raw_rust_input))?
        .into_iter()
        .filter(|path| !BLACKLIST_FILE_NAMES.contains(&path.file_name().unwrap().to_str().unwrap()))
        .collect_vec();

    let pack = RustInputPathPack {
        rust_input_path: paths
            .into_iter()
            .map(|path| Ok((compute_namespace_from_rust_input_path(&path)?, path)))
            .collect::<Result<HashMap<_, _>>>()?,
    };

    ensure!(!pack.rust_input_path.is_empty());
    ensure!(
        !pack.rust_input_path.values().any(|p| path_to_string(p).unwrap().contains("lib.rs")),
        "Do not use `lib.rs` as a Rust input. Please put code to be generated in something like `api.rs`.",
    );

    Ok(pack)
}

fn compute_namespace_from_rust_input_path(rust_input_path: &Path) -> Result<Namespace> {
    let stem = rust_input_path
        .file_stem()
        .context("cannot get file stem")?
        .to_str()
        .context("cannot convert to str")?;
    Ok(Namespace {
        name: stem.to_owned(),
    })
}

fn compute_dart_output_path_pack(
    dart_output_dir: &Path,
    namespaces: &[&Namespace],
) -> DartOutputPathPack {
    DartOutputPathPack {
        dart_decl_output_path: namespaces
            .iter()
            .map(|&namespace| {
                (
                    namespace.to_owned(),
                    dart_output_dir.join(compute_dart_decl_output_filename(namespace)),
                )
            })
            .collect(),
        dart_impl_output_path: dart_output_dir.join("bridge_generated.dart"),
    }
}

fn compute_dart_decl_output_filename(namespace: &Namespace) -> String {
    format!("{}.dart", namespace.name.to_case(Case::Snake))
}

fn compute_dart_class_name(
    dart_class_name: &Option<String>,
    namespaces: &[&Namespace],
) -> HashMap<Namespace, String> {
    const NAMESPACE_PLACEHOLDER: &str = "{namespace}";
    let dart_class_name = dart_class_name.as_deref().unwrap_or(NAMESPACE_PLACEHOLDER);
    namespaces
        .iter()
        .map(|&namespace| {
            (
                namespace.to_owned(),
                dart_class_name
                    .replace(NAMESPACE_PLACEHOLDER, &namespace.name.to_case(Case::Pascal)),
            )
        })
        .collect()
}

fn fallback_rust_output_path(rust_input_path: &Path) -> PathBuf {
    rust_input_path.with_file_name("bridge_generated.rs")
}

fn fallback_llvm_path() -> Vec<String> {
    vec![
        "/opt/homebrew/opt/llvm".to_owned(), // Homebrew root
        "/usr/local/opt/llvm".to_owned(),    // Homebrew x86-64 root
        // Possible Linux LLVM roots
        "/usr/lib/llvm-9".to_owned(),
        "/usr/lib/llvm-10".to_owned(),
        "/usr/lib/llvm-11".to_owned(),
        "/usr/lib/llvm-12".to_owned(),
        "/usr/lib/llvm-13".to_owned(),
        "/usr/lib/llvm-14".to_owned(),
        "/usr/lib/".to_owned(),
        "/usr/lib64/".to_owned(),
        "C:/Program Files/llvm".to_owned(), // Default on Windows
        "C:/msys64/mingw64".to_owned(), // https://packages.msys2.org/package/mingw-w64-x86_64-clang
    ]
}

#[cfg(test)]
mod tests {
    use crate::codegen::config::internal_config::InternalConfig;
    use crate::codegen::Config;
    use crate::utils::logs::configure_opinionated_test_logging;
    use crate::utils::path_utils::path_to_string;
    use crate::utils::test_utils::{get_test_fixture_dir, json_golden_test, set_cwd_test_fixture};
    use std::path::PathBuf;

    use serde_json::Value;
    use serial_test::serial;

    #[test]
    #[serial]
    fn test_parse_single_rust_input() -> anyhow::Result<()> {
        body("library/codegen/config/internal_config_parser/single_rust_input")
    }

    #[test]
    #[serial]
    fn test_parse_wildcard_rust_input() -> anyhow::Result<()> {
        body("library/codegen/config/internal_config_parser/wildcard_rust_input")
    }

    fn body(fixture_name: &str) -> anyhow::Result<()> {
        configure_opinionated_test_logging();
        set_cwd_test_fixture(fixture_name)?;

        let config = Config::from_files_auto()?;

        let internal_config = InternalConfig::parse(config)?;

        let actual_string = serde_json::to_string_pretty(&internal_config)?;
        let actual_json: Value = serde_json::from_str(&actual_string)?;

        json_golden_test(
            &actual_json,
            &PathBuf::from("expect_output.json"),
            &vec![(
                path_to_string(&get_test_fixture_dir(fixture_name))?,
                "{the-working-directory}".to_owned(),
            )],
        )?;

        Ok(())
    }
}
