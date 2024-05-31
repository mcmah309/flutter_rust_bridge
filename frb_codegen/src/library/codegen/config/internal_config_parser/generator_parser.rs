use crate::codegen::config::internal_config::{
    GeneratorInternalConfig, GeneratorWireInternalConfig,
};
use crate::codegen::config::internal_config_parser::path_parser::DartOutputPathPack;
use crate::codegen::generator::api_dart::internal_config::GeneratorApiDartInternalConfig;
use crate::codegen::generator::codec::structs::CodecMode;
use crate::codegen::generator::misc::target::TargetOrCommonMap;
use crate::codegen::generator::wire::c::internal_config::GeneratorWireCInternalConfig;
use crate::codegen::generator::wire::dart::internal_config::{
    DartOutputClassNamePack, GeneratorWireDartDefaultExternalLibraryLoaderInternalConfig,
    GeneratorWireDartInternalConfig,
};
use crate::codegen::generator::wire::rust::internal_config::GeneratorWireRustInternalConfig;
use crate::codegen::ir::ty::rust_opaque::RustOpaqueCodecMode;
use crate::codegen::Config;
use crate::library::commands::cargo_metadata::execute_cargo_metadata;
use crate::utils::dart_repository::get_dart_package_name;
use crate::utils::path_utils::path_to_string;
use anyhow::Context;
use itertools::Itertools;
use pathdiff::diff_paths;
use std::path::{Path, PathBuf};

pub(super) struct Args<'a> {
    config: &'a Config,
    dart_root: &'a Path,
    rust_crate_dir: &'a Path,
    dart_output_path_pack: &'a DartOutputPathPack,
    dart_output_class_name_pack: &'a DartOutputClassNamePack,
    rust_output_path: &'a TargetOrCommonMap<PathBuf>,
    default_stream_sink_codec: CodecMode,
    default_rust_opaque_codec: RustOpaqueCodecMode,
    c_output_path: &'a Option<PathBuf>,
    web_enabled: bool,
    full_dep: bool,
}

pub(super) fn parse(args: Args) -> anyhow::Result<GeneratorInternalConfig> {
    let Args {
        config,
        dart_root,
        rust_crate_dir,
        dart_output_path_pack,
        dart_output_class_name_pack,
        rust_output_path,
        default_stream_sink_codec,
        default_rust_opaque_codec,
        c_output_path,
        web_enabled,
        full_dep,
    } = args;

    let dart_enums_style = config.dart_enums_style.unwrap_or(true);
    let dart3 = config.dart3.unwrap_or(true);
    let default_external_library_loader =
        compute_default_external_library_loader(&rust_crate_dir, &dart_root, config);
    let c_symbol_prefix = compute_c_symbol_prefix(&dart_root)?;

    Ok(GeneratorInternalConfig {
        api_dart: GeneratorApiDartInternalConfig {
            dart_enums_style,
            dart3,
            dart_decl_base_output_path: dart_output_path_pack.dart_decl_base_output_path,
            dart_entrypoint_class_name: dart_output_class_name_pack.entrypoint_class_name.clone(),
            dart_preamble: config.dart_preamble.clone().unwrap_or_default(),
        },
        wire: GeneratorWireInternalConfig {
            dart: GeneratorWireDartInternalConfig {
                dart_root: dart_root.to_owned(),
                web_enabled,
                llvm_path: config
                    .llvm_path
                    .clone()
                    .unwrap_or_else(fallback_llvm_path)
                    .into_iter()
                    .map(PathBuf::from)
                    .collect_vec(),
                llvm_compiler_opts: config.llvm_compiler_opts.clone().unwrap_or_default(),
                extra_headers: config.extra_headers.clone().unwrap_or_default(),
                dart_impl_output_path: dart_output_path_pack.dart_impl_output_path,
                dart_output_class_name_pack: dart_output_class_name_pack.to_owned(),
                default_external_library_loader,
                c_symbol_prefix: c_symbol_prefix.clone(),
                has_ffigen: full_dep,
            },
            rust: GeneratorWireRustInternalConfig {
                rust_crate_dir: rust_crate_dir.to_owned(),
                web_enabled,
                rust_output_path: rust_output_path.clone(),
                c_symbol_prefix: c_symbol_prefix.clone(),
                has_ffigen: full_dep,
                default_stream_sink_codec,
                default_rust_opaque_codec,
            },
            c: GeneratorWireCInternalConfig {
                enable: full_dep,
                rust_crate_dir: rust_crate_dir.to_owned(),
                rust_output_path: rust_output_path.clone(),
                c_output_path: c_output_path.clone(),
                c_symbol_prefix,
            },
        },
    })
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

fn compute_c_symbol_prefix(dart_root: &Path) -> anyhow::Result<String> {
    let package_name = get_dart_package_name(dart_root)?;
    Ok(format!("frbgen_{package_name}_"))
}

fn compute_default_external_library_loader(
    rust_crate_dir: &Path,
    dart_root: &Path,
    config: &Config,
) -> GeneratorWireDartDefaultExternalLibraryLoaderInternalConfig {
    GeneratorWireDartDefaultExternalLibraryLoaderInternalConfig {
        stem: compute_default_external_library_stem(rust_crate_dir)
            .unwrap_or(FALLBACK_DEFAULT_EXTERNAL_LIBRARY_STEM.to_owned()),
        io_directory: compute_default_external_library_relative_directory(
            rust_crate_dir,
            dart_root,
        )
        .unwrap_or(FALLBACK_DEFAULT_EXTERNAL_LIBRARY_RELATIVE_DIRECTORY.to_owned()),
        web_prefix: config
            .default_external_library_loader_web_prefix
            .as_deref()
            .unwrap_or("pkg/")
            .into(),
    }
}

fn compute_default_external_library_stem(rust_crate_dir: &Path) -> anyhow::Result<String> {
    let metadata = execute_cargo_metadata(&rust_crate_dir.join("Cargo.toml"))?;
    let package = metadata
        .root_package()
        .context("cannot find root package")?;
    let target = (package.targets.iter())
        .find(|target| target.kind.iter().any(|kind| kind.contains("lib")))
        .context("cannot find target")?;
    Ok(target.name.clone())
}

fn compute_default_external_library_relative_directory(
    rust_crate_dir: &Path,
    dart_root: &Path,
) -> anyhow::Result<String> {
    let diff = diff_paths(rust_crate_dir, dart_root).context("cannot diff path")?;
    Ok(path_to_string(&diff.join("target").join("release/"))?.replace('\\', "/"))
}

const FALLBACK_DEFAULT_EXTERNAL_LIBRARY_STEM: &str = "UNKNOWN";
const FALLBACK_DEFAULT_EXTERNAL_LIBRARY_RELATIVE_DIRECTORY: &str = "UNKNOWN";
