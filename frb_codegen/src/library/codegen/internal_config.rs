use std::path::Path;

#[derive(Debug, Clone, serde::Serialize)]
pub(crate) struct InternalConfig {
    pub rust_input_path: Path,
    pub dart_output_path: Path,
    pub dart_decl_output_path: Option<Path>,
    pub c_output_path: Vec<Path>,
    pub rust_crate_dir: String,
    pub rust_output_path: Path,
    pub class_name: String,
    pub dart_format_line_length: u32,
    pub dart_enums_style: bool,
    pub skip_add_mod_to_lib: bool,
    pub llvm_path: Vec<Path>,
    pub llvm_compiler_opts: String,
    pub manifest_path: Path,
    pub dart_root: Option<String>,
    pub build_runner: bool,
    pub block_index: BlockIndex,
    pub skip_deps_check: bool, // TODO avoid "skip" (i.e. negative)
    pub wasm_enabled: bool,
    pub inline_rust: bool,
    pub bridge_in_method: bool,
    pub extra_headers: String,
    pub dart3: bool,
    pub keep_going: bool,
}
