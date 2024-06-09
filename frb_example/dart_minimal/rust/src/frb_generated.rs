// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.37.

#![allow(
    non_camel_case_types,
    unused,
    non_snake_case,
    clippy::needless_return,
    clippy::redundant_closure_call,
    clippy::redundant_closure,
    clippy::useless_conversion,
    clippy::unit_arg,
    clippy::unused_unit,
    clippy::double_parens,
    clippy::let_and_return,
    clippy::too_many_arguments,
    clippy::match_single_binding,
    clippy::clone_on_copy,
    clippy::let_unit_value
)]

// Section: imports

use crate::api::minimal::*;
use flutter_rust_bridge::for_generated::byteorder::{NativeEndian, ReadBytesExt, WriteBytesExt};
use flutter_rust_bridge::for_generated::{transform_result_dco, Lockable};
use flutter_rust_bridge::{Handler, IntoIntoDart};

// Section: boilerplate

flutter_rust_bridge::frb_generated_boilerplate!(
    default_stream_sink_codec = SseCodec,
    default_rust_opaque = RustOpaqueMoi,
    default_rust_auto_opaque = RustAutoOpaqueMoi,
);
pub(crate) const FLUTTER_RUST_BRIDGE_CODEGEN_VERSION: &str = "2.0.0-dev.37";
pub(crate) const FLUTTER_RUST_BRIDGE_CODEGEN_CONTENT_HASH: i32 = 382423683;

// Section: executor

flutter_rust_bridge::frb_generated_default_handler!();

// Section: wire_funcs

fn wire__crate__api__minimal__MyAudioParam_my_method_impl(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    ptr_: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len_: i32,
    data_len_: i32,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_normal::<flutter_rust_bridge::for_generated::SseCodec,_,_>(flutter_rust_bridge::for_generated::TaskInfo{ debug_name: "MyAudioParam_my_method", port: Some(port_), mode: flutter_rust_bridge::for_generated::FfiCallMode::Normal }, move || { 
            let message = unsafe { flutter_rust_bridge::for_generated::Dart2RustMessageSse::from_wire(ptr_, rust_vec_len_, data_len_) };
            let mut deserializer = flutter_rust_bridge::for_generated::SseDeserializer::new(message);
            let api_that = <crate::frb_generated::Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnum>::sse_decode(&mut deserializer);deserializer.end(); move |context|  {
                    transform_result_sse((move ||  {
                        let mut api_that_decoded = None;
let decode_indices_ = flutter_rust_bridge::for_generated::lockable_compute_decode_order(vec![flutter_rust_bridge::for_generated::LockableOrderInfo::new(&api_that, 0, false)]);
        for i in decode_indices_ {
            match i {
                0 => api_that_decoded = Some(api_that.lockable_decode_sync_ref()),
                _ => unreachable!(),
            }
        }
        let api_that = api_that_decoded.unwrap();
 Result::<_,()>::Ok(crate::api::minimal::MyAudioParam::my_method(api_that))
                    })())
                } })
}

// Section: related_funcs

flutter_rust_bridge::frb_generated_moi_arc_impl_value!(
    flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MyAudioParam>
);
flutter_rust_bridge::frb_generated_moi_arc_impl_value!(
    flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MyNode>
);

// Section: extra_from_parser

pub enum Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnum
{
    Variant0(RustAutoOpaque<MyNode>),
}

pub fn frb_internal_no_impl_dummy_function_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnum(
    a: Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnum,
) {
}

impl Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnum {
    pub fn blocking_read(&self) -> Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnumRwLockReadGuard{
        match self {
            Self::Variant0(inner) => Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnumRwLockReadGuard::Variant0(inner.blocking_read()),

        }
    }

    pub fn blocking_write(&self) -> Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnumRwLockWriteGuard{
        unreachable!()
    }

    pub async fn read(&self) -> Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnumRwLockReadGuard{
        match self {
            Self::Variant0(inner) => Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnumRwLockReadGuard::Variant0(inner.read().await),

        }
    }

    pub async fn write(&self) -> Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnumRwLockWriteGuard{
        unreachable!()
    }
}

impl Lockable
    for Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnum
{
    type RwLockReadGuard<'a> = Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnumRwLockReadGuard<'a>;
    type RwLockWriteGuard<'a> = Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnumRwLockWriteGuard<'a>;

    fn lockable_order(&self) -> flutter_rust_bridge::for_generated::LockableOrder {
        match self {
            Self::Variant0(inner) => {
                flutter_rust_bridge::for_generated::rust_auto_opaque_lockable_order(inner)
            }
        }
    }

    fn lockable_decode_sync_ref(&self) -> Self::RwLockReadGuard<'_> {
        self.blocking_read()
    }

    fn lockable_decode_sync_ref_mut(&self) -> Self::RwLockWriteGuard<'_> {
        self.blocking_write()
    }

    fn lockable_decode_async_ref<'a>(
        &'a self,
    ) -> std::pin::Pin<Box<dyn std::future::Future<Output = Self::RwLockReadGuard<'_>> + Send + 'a>>
    where
        Self: Sync + 'a,
    {
        Box::pin(async move { self.read().await })
    }

    fn lockable_decode_async_ref_mut<'a>(
        &'a self,
    ) -> std::pin::Pin<Box<dyn std::future::Future<Output = Self::RwLockWriteGuard<'_>> + Send + 'a>>
    where
        Self: Sync + 'a,
    {
        Box::pin(async move { self.write().await })
    }
}

pub enum Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnumRwLockReadGuard<
    'a,
> {
    Variant0(flutter_rust_bridge::for_generated::rust_async::RwLockReadGuard<'a, MyNode>),
}

impl std::ops::Deref for Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnumRwLockReadGuard<'_> {
            type Target = MyAudioParam;

            fn deref(&self) -> &Self::Target {
                match self {
            Self::Variant0(inner) => inner.deref().param_one(),

        }
            }
        }

pub enum Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnumRwLockWriteGuard<
    'a,
> {
    Variant0(flutter_rust_bridge::for_generated::rust_async::RwLockWriteGuard<'a, MyNode>),
}

impl std::ops::Deref for Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnumRwLockWriteGuard<'_> {
            type Target = MyAudioParam;

            fn deref(&self) -> &Self::Target {
                match self {
            Self::Variant0(inner) => inner.deref().param_one(),

        }
            }
        }

impl std::ops::DerefMut for Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnumRwLockWriteGuard<'_> {
                fn deref_mut(&mut self) -> &mut Self::Target {
                    unreachable!()
                }
            }

// Section: dart2rust

impl SseDecode for RustAutoOpaqueMoi<MyNode> {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        let mut inner = <RustOpaqueMoi<
            flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MyNode>,
        >>::sse_decode(deserializer);
        return flutter_rust_bridge::for_generated::rust_auto_opaque_explicit_decode(inner);
    }
}

impl SseDecode for MyAudioParam {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        let mut inner = <RustOpaqueMoi<
            flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MyAudioParam>,
        >>::sse_decode(deserializer);
        return flutter_rust_bridge::for_generated::rust_auto_opaque_decode_owned(inner);
    }
}

impl SseDecode for MyNode {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        let mut inner = <RustOpaqueMoi<
            flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MyNode>,
        >>::sse_decode(deserializer);
        return flutter_rust_bridge::for_generated::rust_auto_opaque_decode_owned(inner);
    }
}

impl SseDecode
    for RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MyAudioParam>>
{
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        let mut inner = <usize>::sse_decode(deserializer);
        return decode_rust_opaque_moi(inner);
    }
}

impl SseDecode for RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MyNode>> {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        let mut inner = <usize>::sse_decode(deserializer);
        return decode_rust_opaque_moi(inner);
    }
}

impl SseDecode for String {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        let mut inner = <Vec<u8>>::sse_decode(deserializer);
        return String::from_utf8(inner).unwrap();
    }
}

impl SseDecode for crate::frb_generated::Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnum {
                    // Codec=Sse (Serialization based), see doc to use other codecs
                    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {let mut tag_ = <i32>::sse_decode(deserializer);
            match tag_ {0 => { let mut var_field0 = <RustAutoOpaqueMoi<MyNode>>::sse_decode(deserializer);
return crate::frb_generated::Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnum::Variant0(var_field0); }
 _ => { unimplemented!(""); }}}
                }

impl SseDecode for Vec<u8> {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        let mut len_ = <i32>::sse_decode(deserializer);
        let mut ans_ = vec![];
        for idx_ in 0..len_ {
            ans_.push(<u8>::sse_decode(deserializer));
        }
        return ans_;
    }
}

impl SseDecode for u8 {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        deserializer.cursor.read_u8().unwrap()
    }
}

impl SseDecode for () {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {}
}

impl SseDecode for usize {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        deserializer.cursor.read_u64::<NativeEndian>().unwrap() as _
    }
}

impl SseDecode for i32 {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        deserializer.cursor.read_i32::<NativeEndian>().unwrap()
    }
}

impl SseDecode for bool {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        deserializer.cursor.read_u8().unwrap() != 0
    }
}

fn pde_ffi_dispatcher_primary_impl(
    func_id: i32,
    port: flutter_rust_bridge::for_generated::MessagePort,
    ptr: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len: i32,
    data_len: i32,
) {
    // Codec=Pde (Serialization + dispatch), see doc to use other codecs
    match func_id {
        1 => wire__crate__api__minimal__MyAudioParam_my_method_impl(
            port,
            ptr,
            rust_vec_len,
            data_len,
        ),
        _ => unreachable!(),
    }
}

fn pde_ffi_dispatcher_sync_impl(
    func_id: i32,
    ptr: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len: i32,
    data_len: i32,
) -> flutter_rust_bridge::for_generated::WireSyncRust2DartSse {
    // Codec=Pde (Serialization + dispatch), see doc to use other codecs
    match func_id {
        _ => unreachable!(),
    }
}

// Section: rust2dart

// Codec=Dco (DartCObject based), see doc to use other codecs
impl flutter_rust_bridge::IntoDart for FrbWrapper<MyAudioParam> {
    fn into_dart(self) -> flutter_rust_bridge::for_generated::DartAbi {
        flutter_rust_bridge::for_generated::rust_auto_opaque_encode::<_, MoiArc<_>>(self.0)
            .into_dart()
    }
}
impl flutter_rust_bridge::for_generated::IntoDartExceptPrimitive for FrbWrapper<MyAudioParam> {}

impl flutter_rust_bridge::IntoIntoDart<FrbWrapper<MyAudioParam>> for MyAudioParam {
    fn into_into_dart(self) -> FrbWrapper<MyAudioParam> {
        self.into()
    }
}

// Codec=Dco (DartCObject based), see doc to use other codecs
impl flutter_rust_bridge::IntoDart for FrbWrapper<MyNode> {
    fn into_dart(self) -> flutter_rust_bridge::for_generated::DartAbi {
        flutter_rust_bridge::for_generated::rust_auto_opaque_encode::<_, MoiArc<_>>(self.0)
            .into_dart()
    }
}
impl flutter_rust_bridge::for_generated::IntoDartExceptPrimitive for FrbWrapper<MyNode> {}

impl flutter_rust_bridge::IntoIntoDart<FrbWrapper<MyNode>> for MyNode {
    fn into_into_dart(self) -> FrbWrapper<MyNode> {
        self.into()
    }
}

// Codec=Dco (DartCObject based), see doc to use other codecs
impl flutter_rust_bridge::IntoDart for crate::frb_generated::Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnum {
                fn into_dart(self) -> flutter_rust_bridge::for_generated::DartAbi {
                    match self {crate::frb_generated::Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnum::Variant0(field0) => { [0.into_dart(),
field0.into_into_dart().into_dart()].into_dart() }
 _ => { unimplemented!(""); }}
                }
            }
impl flutter_rust_bridge::for_generated::IntoDartExceptPrimitive for crate::frb_generated::Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnum {}
impl flutter_rust_bridge::IntoIntoDart<crate::frb_generated::Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnum> for crate::frb_generated::Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnum {
            fn into_into_dart(self) -> crate::frb_generated::Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnum {
                self
            }
        }

impl SseEncode for RustAutoOpaqueMoi<MyNode> {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        <RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MyNode>>>::sse_encode(flutter_rust_bridge::for_generated::rust_auto_opaque_explicit_encode(self), serializer);
    }
}

impl SseEncode for MyAudioParam {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        <RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MyAudioParam>>>::sse_encode(flutter_rust_bridge::for_generated::rust_auto_opaque_encode::<_, MoiArc<_>>(self), serializer);
    }
}

impl SseEncode for MyNode {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        <RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MyNode>>>::sse_encode(flutter_rust_bridge::for_generated::rust_auto_opaque_encode::<_, MoiArc<_>>(self), serializer);
    }
}

impl SseEncode
    for RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MyAudioParam>>
{
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        let (ptr, size) = self.sse_encode_raw();
        <usize>::sse_encode(ptr, serializer);
        <i32>::sse_encode(size, serializer);
    }
}

impl SseEncode for RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MyNode>> {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        let (ptr, size) = self.sse_encode_raw();
        <usize>::sse_encode(ptr, serializer);
        <i32>::sse_encode(size, serializer);
    }
}

impl SseEncode for String {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        <Vec<u8>>::sse_encode(self.into_bytes(), serializer);
    }
}

impl SseEncode for crate::frb_generated::Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnum {
                    // Codec=Sse (Serialization based), see doc to use other codecs
                    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {match self {crate::frb_generated::Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMyAudioParamProxyEnum::Variant0(field0) => { <i32>::sse_encode(0, serializer); <RustAutoOpaqueMoi<MyNode>>::sse_encode(field0, serializer);
 }
 _ => { unimplemented!(""); }}}
                }

impl SseEncode for Vec<u8> {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        <i32>::sse_encode(self.len() as _, serializer);
        for item in self {
            <u8>::sse_encode(item, serializer);
        }
    }
}

impl SseEncode for u8 {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        serializer.cursor.write_u8(self).unwrap();
    }
}

impl SseEncode for () {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {}
}

impl SseEncode for usize {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        serializer
            .cursor
            .write_u64::<NativeEndian>(self as _)
            .unwrap();
    }
}

impl SseEncode for i32 {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        serializer.cursor.write_i32::<NativeEndian>(self).unwrap();
    }
}

impl SseEncode for bool {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        serializer.cursor.write_u8(self as _).unwrap();
    }
}

#[cfg(not(target_family = "wasm"))]
#[path = "frb_generated.io.rs"]
mod io;
#[cfg(not(target_family = "wasm"))]
pub use io::*;

/// cbindgen:ignore
#[cfg(target_family = "wasm")]
#[path = "frb_generated.web.rs"]
mod web;
#[cfg(target_family = "wasm")]
pub use web::*;
