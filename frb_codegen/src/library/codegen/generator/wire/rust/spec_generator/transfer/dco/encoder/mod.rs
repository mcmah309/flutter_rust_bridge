use crate::codegen::generator::acc::Acc;
use crate::codegen::generator::wire::rust::spec_generator::base::{
    WireRustGenerator, WireRustGeneratorContext,
};
use crate::codegen::generator::wire::rust::spec_generator::output_code::WireRustOutputCode;
use crate::codegen::generator::wire::rust::spec_generator::transfer::dco::base::{
    WireRustTransferDcoGenerator, WireRustTransferDcoGeneratorContext,
};
use crate::codegen::generator::wire::rust::IrPackComputedCache;
use serde::Serialize;

mod misc;
pub(crate) mod ty;

#[derive(Serialize)]
pub(crate) struct WireDartOutputSpecTransferDcoEncoder {
    pub impl_into_dart: Acc<Vec<WireRustOutputCode>>,
}

pub(crate) fn generate(
    context: WireRustTransferDcoGeneratorContext,
    cache: &IrPackComputedCache,
) -> WireDartOutputSpecTransferDcoEncoder {
    WireDartOutputSpecTransferDcoEncoder {
        impl_into_dart: cache
            .distinct_types
            .iter()
            .filter_map(|ty| {
                WireRustTransferDcoGenerator::new(ty.clone(), context).generate_impl_into_dart()
            })
            .map(|x| Acc::new_common(x.into()))
            .collect(),
    }
}
