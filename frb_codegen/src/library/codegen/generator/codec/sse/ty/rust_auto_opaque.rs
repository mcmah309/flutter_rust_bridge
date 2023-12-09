use crate::codegen::generator::codec::sse::ty::delegate::{
    simple_delegate_decode, simple_delegate_encode,
};
use crate::codegen::generator::codec::sse::ty::*;

impl<'a> CodecSseTyTrait for RustAutoOpaqueCodecSseTy<'a> {
    fn generate_encode(&self, lang: &Lang) -> Option<String> {
        let needs_move = self.ir.needs_move();
        Some(simple_delegate_encode(
            lang,
            &IrTypeRustOpaque::DELEGATE_TYPE,
            &match lang {
                Lang::DartLang(_) => format!("self.sseEncode(move: {needs_move})"),
                Lang::RustLang(_) => "TODO".to_owned(),
            },
        ))
    }

    fn generate_decode(&self, lang: &Lang) -> Option<String> {
        Some(simple_delegate_decode(
            lang,
            &IrTypeRustOpaque::DELEGATE_TYPE,
            "inner",
        ))
    }
}
