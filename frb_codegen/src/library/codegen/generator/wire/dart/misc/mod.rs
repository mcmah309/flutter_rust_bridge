use crate::codegen::generator::acc::Acc;
use crate::codegen::generator::wire::dart::base::WireDartGeneratorContext;
use crate::codegen::generator::wire::dart::output_code::WireDartOutputCode;
use crate::codegen::ir::pack::{IrPack, IrPackComputedCache};
use crate::codegen::ir::ty::IrType;
use crate::codegen::ir::ty::IrType::{EnumRef, StructRef};

pub(crate) mod ty;

pub(crate) struct WireDartOutputSpecMisc {
    needs_freezed: bool,
}

pub(super) fn generate(
    context: WireDartGeneratorContext,
    ir_pack: &IrPack,
    cache: &IrPackComputedCache,
) -> WireDartOutputSpecMisc {
    WireDartOutputSpecMisc {
        needs_freezed: compute_needs_freezed(cache, ir_pack),
    }
}

fn compute_needs_freezed(cache: &IrPackComputedCache, ir_pack: &IrPack) -> bool {
    cache
        .distinct_types
        .iter()
        .any(|ty| compute_needs_freezed_for_type(ty, ir_pack))
}

fn compute_needs_freezed_for_type(ty: &IrType, ir_pack: &IrPack) -> bool {
    match ty {
        EnumRef(_) => true,
        StructRef(st) => st.freezed,
        _ => false,
    }
}
