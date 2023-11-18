use crate::codegen::generator::acc::Acc;
use crate::codegen::generator::wire::rust::base::WireRustGeneratorContext;
use crate::codegen::generator::wire::rust::wire_rust_code::WireRustCode;
use crate::codegen::ir::pack::IrPack;
use crate::codegen::ir::ty::IrType;
use itertools::Itertools;

pub(crate) mod api2wire;
pub(crate) mod base;
pub(in crate::library::codegen::generator::wire::rust) mod extern_func;
mod internal_config;
pub(crate) mod misc;
pub(crate) mod wire2api;
mod wire_rust_code;

pub(crate) fn generate(ir_pack: &IrPack, context: WireRustGeneratorContext) -> Acc<WireRustCode> {
    let cache = IrPackComputedCache::new(ir_pack);
    let mut ans = Acc::default();
    ans += misc::generate(ir_pack, context, &cache);
    ans += wire2api::generate(context, &cache);
    ans += api2wire::generate(context, &cache);
    ans.map(|v, _| v.into_iter().collect())
}

/// Some information derivable from `IrPack`, but may be expensive to compute,
/// so we compute once and cache them.
pub(super) struct IrPackComputedCache {
    distinct_input_types: Vec<IrType>,
    distinct_output_types: Vec<IrType>,
    input_and_output_types: Vec<IrType>,
}

impl IrPackComputedCache {
    pub fn new(ir_pack: &IrPack) -> Self {
        let distinct_input_types = ir_pack.distinct_types(true, false);
        let distinct_output_types = ir_pack.distinct_types(false, true);
        let input_and_output_types = distinct_input_types
            .iter()
            .cloned()
            .chain(distinct_output_types.iter().cloned())
            .collect_vec();
        Self {
            distinct_input_types,
            distinct_output_types,
            input_and_output_types,
        }
    }
}
