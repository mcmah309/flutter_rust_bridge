// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.38.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

import 'api/minimal.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:ffi' as ffi;
import 'frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated_io.dart';

abstract class RustLibApiImplPlatform extends BaseApiImpl<RustLibWire> {
  RustLibApiImplPlatform({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  @protected
  int dco_decode_i_32(dynamic raw);

  @protected
  Uint64List dco_decode_list_prim_u_64_strict(dynamic raw);

  @protected
  BigInt dco_decode_u_64(dynamic raw);

  @protected
  void dco_decode_unit(dynamic raw);

  @protected
  int sse_decode_i_32(SseDeserializer deserializer);

  @protected
  Uint64List sse_decode_list_prim_u_64_strict(SseDeserializer deserializer);

  @protected
  BigInt sse_decode_u_64(SseDeserializer deserializer);

  @protected
  void sse_decode_unit(SseDeserializer deserializer);

  @protected
  bool sse_decode_bool(SseDeserializer deserializer);

  @protected
  ffi.Pointer<wire_cst_list_prim_u_64_strict> cst_encode_list_prim_u_64_strict(
      Uint64List raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    final ans = wire.cst_new_list_prim_u_64_strict(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw.inner);
    return ans;
  }

  @protected
  int cst_encode_u_64(BigInt raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return raw.toSigned(64).toInt();
  }

  @protected
  int cst_encode_i_32(int raw);

  @protected
  void cst_encode_unit(void raw);

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_list_prim_u_64_strict(
      Uint64List self, SseSerializer serializer);

  @protected
  void sse_encode_u_64(BigInt self, SseSerializer serializer);

  @protected
  void sse_encode_unit(void self, SseSerializer serializer);

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer);
}

// Section: wire_class

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names
// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint

/// generated by flutter_rust_bridge
class RustLibWire implements BaseWire {
  factory RustLibWire.fromExternalLibrary(ExternalLibrary lib) =>
      RustLibWire(lib.ffiDynamicLibrary);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  RustLibWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  RustLibWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();

  void wire__crate__api__minimal__f(
    int port_,
    ffi.Pointer<wire_cst_list_prim_u_64_strict> a,
  ) {
    return _wire__crate__api__minimal__f(
      port_,
      a,
    );
  }

  late final _wire__crate__api__minimal__fPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(
                  ffi.Int64, ffi.Pointer<wire_cst_list_prim_u_64_strict>)>>(
      'frbgen_frb_example_dart_minimal_wire__crate__api__minimal__f');
  late final _wire__crate__api__minimal__f =
      _wire__crate__api__minimal__fPtr.asFunction<
          void Function(int, ffi.Pointer<wire_cst_list_prim_u_64_strict>)>();

  void wire__crate__api__minimal__minimal_adder(
    int port_,
    int a,
    int b,
  ) {
    return _wire__crate__api__minimal__minimal_adder(
      port_,
      a,
      b,
    );
  }

  late final _wire__crate__api__minimal__minimal_adderPtr = _lookup<
          ffi
          .NativeFunction<ffi.Void Function(ffi.Int64, ffi.Int32, ffi.Int32)>>(
      'frbgen_frb_example_dart_minimal_wire__crate__api__minimal__minimal_adder');
  late final _wire__crate__api__minimal__minimal_adder =
      _wire__crate__api__minimal__minimal_adderPtr
          .asFunction<void Function(int, int, int)>();

  ffi.Pointer<wire_cst_list_prim_u_64_strict> cst_new_list_prim_u_64_strict(
    int len,
  ) {
    return _cst_new_list_prim_u_64_strict(
      len,
    );
  }

  late final _cst_new_list_prim_u_64_strictPtr = _lookup<
          ffi.NativeFunction<
              ffi.Pointer<wire_cst_list_prim_u_64_strict> Function(ffi.Int32)>>(
      'frbgen_frb_example_dart_minimal_cst_new_list_prim_u_64_strict');
  late final _cst_new_list_prim_u_64_strict = _cst_new_list_prim_u_64_strictPtr
      .asFunction<ffi.Pointer<wire_cst_list_prim_u_64_strict> Function(int)>();

  int dummy_method_to_enforce_bundling() {
    return _dummy_method_to_enforce_bundling();
  }

  late final _dummy_method_to_enforce_bundlingPtr =
      _lookup<ffi.NativeFunction<ffi.Int64 Function()>>(
          'dummy_method_to_enforce_bundling');
  late final _dummy_method_to_enforce_bundling =
      _dummy_method_to_enforce_bundlingPtr.asFunction<int Function()>();
}

typedef DartPostCObjectFnType
    = ffi.Pointer<ffi.NativeFunction<DartPostCObjectFnTypeFunction>>;
typedef DartPostCObjectFnTypeFunction = ffi.Bool Function(
    DartPort port_id, ffi.Pointer<ffi.Void> message);
typedef DartDartPostCObjectFnTypeFunction = bool Function(
    DartDartPort port_id, ffi.Pointer<ffi.Void> message);
typedef DartPort = ffi.Int64;
typedef DartDartPort = int;

final class wire_cst_list_prim_u_64_strict extends ffi.Struct {
  external ffi.Pointer<ffi.Uint64> ptr;

  @ffi.Int32()
  external int len;
}
