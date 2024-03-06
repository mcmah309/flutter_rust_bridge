// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.26.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:collection/collection.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
part 'rust_opaque_twin_rust_async.freezed.dart';

Future<HideDataTwinRustAsync> createOpaqueTwinRustAsync({dynamic hint}) =>
    RustLib.instance.api.createOpaqueTwinRustAsync(hint: hint);

Future<HideDataTwinRustAsync?> createOptionOpaqueTwinRustAsync(
        {HideDataTwinRustAsync? opaque, dynamic hint}) =>
    RustLib.instance.api
        .createOptionOpaqueTwinRustAsync(opaque: opaque, hint: hint);

Future<EnumOpaqueTwinRustAsyncArray5> createArrayOpaqueEnumTwinRustAsync(
        {dynamic hint}) =>
    RustLib.instance.api.createArrayOpaqueEnumTwinRustAsync(hint: hint);

Future<String> runEnumOpaqueTwinRustAsync(
        {required EnumOpaqueTwinRustAsync opaque, dynamic hint}) =>
    RustLib.instance.api.runEnumOpaqueTwinRustAsync(opaque: opaque, hint: hint);

Future<String> runOpaqueTwinRustAsync(
        {required HideDataTwinRustAsync opaque, dynamic hint}) =>
    RustLib.instance.api.runOpaqueTwinRustAsync(opaque: opaque, hint: hint);

Future<String> runOpaqueWithDelayTwinRustAsync(
        {required HideDataTwinRustAsync opaque, dynamic hint}) =>
    RustLib.instance.api
        .runOpaqueWithDelayTwinRustAsync(opaque: opaque, hint: hint);

Future<HideDataTwinRustAsyncArray2> opaqueArrayTwinRustAsync({dynamic hint}) =>
    RustLib.instance.api.opaqueArrayTwinRustAsync(hint: hint);

Future<String> runNonCloneTwinRustAsync(
        {required NonCloneDataTwinRustAsync clone, dynamic hint}) =>
    RustLib.instance.api.runNonCloneTwinRustAsync(clone: clone, hint: hint);

Future<void> opaqueArrayRunTwinRustAsync(
        {required HideDataTwinRustAsyncArray2 data, dynamic hint}) =>
    RustLib.instance.api.opaqueArrayRunTwinRustAsync(data: data, hint: hint);

Future<List<HideDataTwinRustAsync>> opaqueVecTwinRustAsync({dynamic hint}) =>
    RustLib.instance.api.opaqueVecTwinRustAsync(hint: hint);

Future<void> opaqueVecRunTwinRustAsync(
        {required List<HideDataTwinRustAsync> data, dynamic hint}) =>
    RustLib.instance.api.opaqueVecRunTwinRustAsync(data: data, hint: hint);

Future<OpaqueNestedTwinRustAsync> createNestedOpaqueTwinRustAsync(
        {dynamic hint}) =>
    RustLib.instance.api.createNestedOpaqueTwinRustAsync(hint: hint);

Future<void> runNestedOpaqueTwinRustAsync(
        {required OpaqueNestedTwinRustAsync opaque, dynamic hint}) =>
    RustLib.instance.api
        .runNestedOpaqueTwinRustAsync(opaque: opaque, hint: hint);

Future<String> unwrapRustOpaqueTwinRustAsync(
        {required HideDataTwinRustAsync opaque, dynamic hint}) =>
    RustLib.instance.api
        .unwrapRustOpaqueTwinRustAsync(opaque: opaque, hint: hint);

/// Function to check the code generator.
/// FrbOpaqueReturn must be only return type.
/// FrbOpaqueReturn must not be used as an argument.
Future<FrbOpaqueReturnTwinRustAsync> frbGeneratorTestTwinRustAsync(
        {dynamic hint}) =>
    RustLib.instance.api.frbGeneratorTestTwinRustAsync(hint: hint);

// Rust type: RustOpaqueMoi<Box < dyn DartDebugTwinRustAsync >>
@sealed
class BoxDartDebugTwinRustAsync extends RustOpaque {
  BoxDartDebugTwinRustAsync.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  BoxDartDebugTwinRustAsync.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_BoxDartDebugTwinRustAsync,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_BoxDartDebugTwinRustAsync,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_BoxDartDebugTwinRustAsyncPtr,
  );
}

// Rust type: RustOpaqueMoi<FrbOpaqueReturnTwinRustAsync>
@sealed
class FrbOpaqueReturnTwinRustAsync extends RustOpaque {
  FrbOpaqueReturnTwinRustAsync.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  FrbOpaqueReturnTwinRustAsync.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_FrbOpaqueReturnTwinRustAsync,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_FrbOpaqueReturnTwinRustAsync,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_FrbOpaqueReturnTwinRustAsyncPtr,
  );
}

// Rust type: RustOpaqueMoi<HideDataTwinRustAsync>
@sealed
class HideDataTwinRustAsync extends RustOpaque {
  HideDataTwinRustAsync.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  HideDataTwinRustAsync.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_HideDataTwinRustAsync,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_HideDataTwinRustAsync,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_HideDataTwinRustAsyncPtr,
  );
}

class HideDataTwinRustAsyncArray2
    extends NonGrowableListView<HideDataTwinRustAsync> {
  static const arraySize = 2;

  @internal
  List<HideDataTwinRustAsync> get inner => _inner;
  final List<HideDataTwinRustAsync> _inner;

  HideDataTwinRustAsyncArray2(this._inner)
      : assert(_inner.length == arraySize),
        super(_inner);

  HideDataTwinRustAsyncArray2.init(HideDataTwinRustAsync fill)
      : this(List<HideDataTwinRustAsync>.filled(arraySize, fill));
}

// Rust type: RustOpaqueMoi<Mutex < HideDataTwinRustAsync >>
@sealed
class MutexHideDataTwinRustAsync extends RustOpaque {
  MutexHideDataTwinRustAsync.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  MutexHideDataTwinRustAsync.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_MutexHideDataTwinRustAsync,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_MutexHideDataTwinRustAsync,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_MutexHideDataTwinRustAsyncPtr,
  );
}

// Rust type: RustOpaqueMoi<NonCloneDataTwinRustAsync>
@sealed
class NonCloneDataTwinRustAsync extends RustOpaque {
  NonCloneDataTwinRustAsync.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  NonCloneDataTwinRustAsync.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_NonCloneDataTwinRustAsync,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_NonCloneDataTwinRustAsync,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_NonCloneDataTwinRustAsyncPtr,
  );
}

// Rust type: RustOpaqueMoi<RwLock < HideDataTwinRustAsync >>
@sealed
class RwLockHideDataTwinRustAsync extends RustOpaque {
  RwLockHideDataTwinRustAsync.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  RwLockHideDataTwinRustAsync.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_RwLockHideDataTwinRustAsync,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_RwLockHideDataTwinRustAsync,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_RwLockHideDataTwinRustAsyncPtr,
  );
}

// Rust type: RustOpaqueMoi<i32>
@sealed
class I32 extends RustOpaque {
  I32.dcoDecode(List<dynamic> wire) : super.dcoDecode(wire, _kStaticData);

  I32.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_I32,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_I32,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_I32Ptr,
  );
}

@freezed
sealed class EnumOpaqueTwinRustAsync with _$EnumOpaqueTwinRustAsync {
  const factory EnumOpaqueTwinRustAsync.struct(
    HideDataTwinRustAsync field0,
  ) = EnumOpaqueTwinRustAsync_Struct;
  const factory EnumOpaqueTwinRustAsync.primitive(
    I32 field0,
  ) = EnumOpaqueTwinRustAsync_Primitive;
  const factory EnumOpaqueTwinRustAsync.traitObj(
    BoxDartDebugTwinRustAsync field0,
  ) = EnumOpaqueTwinRustAsync_TraitObj;
  const factory EnumOpaqueTwinRustAsync.mutex(
    MutexHideDataTwinRustAsync field0,
  ) = EnumOpaqueTwinRustAsync_Mutex;
  const factory EnumOpaqueTwinRustAsync.rwLock(
    RwLockHideDataTwinRustAsync field0,
  ) = EnumOpaqueTwinRustAsync_RwLock;
  const factory EnumOpaqueTwinRustAsync.nothing() =
      EnumOpaqueTwinRustAsync_Nothing;
}

class EnumOpaqueTwinRustAsyncArray5
    extends NonGrowableListView<EnumOpaqueTwinRustAsync> {
  static const arraySize = 5;

  @internal
  List<EnumOpaqueTwinRustAsync> get inner => _inner;
  final List<EnumOpaqueTwinRustAsync> _inner;

  EnumOpaqueTwinRustAsyncArray5(this._inner)
      : assert(_inner.length == arraySize),
        super(_inner);

  EnumOpaqueTwinRustAsyncArray5.init(EnumOpaqueTwinRustAsync fill)
      : this(List<EnumOpaqueTwinRustAsync>.filled(arraySize, fill));
}

/// [`HideDataTwinRustAsync`] has private fields.
class OpaqueNestedTwinRustAsync {
  final HideDataTwinRustAsync first;
  final HideDataTwinRustAsync second;

  const OpaqueNestedTwinRustAsync({
    required this.first,
    required this.second,
  });

  @override
  int get hashCode => first.hashCode ^ second.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OpaqueNestedTwinRustAsync &&
          runtimeType == other.runtimeType &&
          first == other.first &&
          second == other.second;
}
