// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.35.

// Section: imports

use super::*;
use crate::api::minimal::*;
use flutter_rust_bridge::for_generated::byteorder::{NativeEndian, ReadBytesExt, WriteBytesExt};
use flutter_rust_bridge::for_generated::transform_result_dco;
use flutter_rust_bridge::for_generated::wasm_bindgen;
use flutter_rust_bridge::for_generated::wasm_bindgen::prelude::*;
use flutter_rust_bridge::{Handler, IntoIntoDart};

// Section: boilerplate

flutter_rust_bridge::frb_generated_boilerplate_web!();

// Section: dart2rust

impl CstDecode<String> for String {
    // Codec=Cst (C-struct based), see doc to use other codecs
    fn cst_decode(self) -> String {
        self
    }
}
impl CstDecode<crate::api::minimal::ItemContainerSolutionTwo>
    for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue
{
    // Codec=Cst (C-struct based), see doc to use other codecs
    fn cst_decode(self) -> crate::api::minimal::ItemContainerSolutionTwo {
        let self_ = self
            .dyn_into::<flutter_rust_bridge::for_generated::js_sys::Array>()
            .unwrap();
        assert_eq!(
            self_.length(),
            2,
            "Expected 2 elements, got {}",
            self_.length()
        );
        crate::api::minimal::ItemContainerSolutionTwo {
            name: self_.get(0).cst_decode(),
            items: self_.get(1).cst_decode(),
        }
    }
}
impl CstDecode<Vec<RustAutoOpaque<OpaqueItem>>>
    for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue
{
    // Codec=Cst (C-struct based), see doc to use other codecs
    fn cst_decode(self) -> Vec<RustAutoOpaque<OpaqueItem>> {
        self.dyn_into::<flutter_rust_bridge::for_generated::js_sys::Array>()
            .unwrap()
            .iter()
            .map(CstDecode::cst_decode)
            .collect()
    }
}
impl CstDecode<Vec<i32>> for Box<[i32]> {
    // Codec=Cst (C-struct based), see doc to use other codecs
    fn cst_decode(self) -> Vec<i32> {
        self.into_vec()
    }
}
impl CstDecode<Vec<u8>> for Box<[u8]> {
    // Codec=Cst (C-struct based), see doc to use other codecs
    fn cst_decode(self) -> Vec<u8> {
        self.into_vec()
    }
}
impl CstDecode<RustAutoOpaque<OpaqueItem>>
    for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue
{
    // Codec=Cst (C-struct based), see doc to use other codecs
    fn cst_decode(self) -> RustAutoOpaque<OpaqueItem> {
        flutter_rust_bridge::for_generated::rust_auto_opaque_explicit_decode(self.cst_decode())
    }
}
impl CstDecode<RustOpaqueNom<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<OpaqueItem>>>
    for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue
{
    // Codec=Cst (C-struct based), see doc to use other codecs
    fn cst_decode(
        self,
    ) -> RustOpaqueNom<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<OpaqueItem>> {
        #[cfg(target_pointer_width = "64")]
        {
            compile_error!("64-bit pointers are not supported.");
        }
        unsafe { decode_rust_opaque_nom((self.as_f64().unwrap() as usize) as _) }
    }
}
impl CstDecode<String> for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue {
    // Codec=Cst (C-struct based), see doc to use other codecs
    fn cst_decode(self) -> String {
        self.as_string().expect("non-UTF-8 string, or not a string")
    }
}
impl CstDecode<i32> for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue {
    // Codec=Cst (C-struct based), see doc to use other codecs
    fn cst_decode(self) -> i32 {
        self.unchecked_into_f64() as _
    }
}
impl CstDecode<Vec<i32>> for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue {
    // Codec=Cst (C-struct based), see doc to use other codecs
    fn cst_decode(self) -> Vec<i32> {
        self.unchecked_into::<flutter_rust_bridge::for_generated::js_sys::Int32Array>()
            .to_vec()
            .into()
    }
}
impl CstDecode<Vec<u8>> for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue {
    // Codec=Cst (C-struct based), see doc to use other codecs
    fn cst_decode(self) -> Vec<u8> {
        self.unchecked_into::<flutter_rust_bridge::for_generated::js_sys::Uint8Array>()
            .to_vec()
            .into()
    }
}
impl CstDecode<u8> for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue {
    // Codec=Cst (C-struct based), see doc to use other codecs
    fn cst_decode(self) -> u8 {
        self.unchecked_into_f64() as _
    }
}
impl CstDecode<usize> for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue {
    // Codec=Cst (C-struct based), see doc to use other codecs
    fn cst_decode(self) -> usize {
        ::std::convert::TryInto::<u64>::try_into(self).unwrap() as _
    }
}

#[wasm_bindgen]
pub fn wire__crate__api__minimal__init_app(port_: flutter_rust_bridge::for_generated::MessagePort) {
    wire__crate__api__minimal__init_app_impl(port_)
}

#[wasm_bindgen]
pub fn wire__crate__api__minimal__item_container_solution_two_create(
    port_: flutter_rust_bridge::for_generated::MessagePort,
) {
    wire__crate__api__minimal__item_container_solution_two_create_impl(port_)
}

#[wasm_bindgen]
pub fn wire__crate__api__minimal__item_container_solution_two_get_item_contents(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    that: flutter_rust_bridge::for_generated::wasm_bindgen::JsValue,
) {
    wire__crate__api__minimal__item_container_solution_two_get_item_contents_impl(port_, that)
}

#[wasm_bindgen]
pub fn wire__crate__api__minimal__minimal_adder(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    a: i32,
    b: i32,
) {
    wire__crate__api__minimal__minimal_adder_impl(port_, a, b)
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerOpaqueItem(
    ptr: *const std::ffi::c_void,
) {
    unsafe {
        StdArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<OpaqueItem>>::increment_strong_count(ptr as _);
    }
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerOpaqueItem(
    ptr: *const std::ffi::c_void,
) {
    unsafe {
        StdArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<OpaqueItem>>::decrement_strong_count(ptr as _);
    }
}
