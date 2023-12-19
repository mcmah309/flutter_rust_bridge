// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.1.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:collection/collection.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
import 'rust_opaque_sync_twin_sse.dart';
import 'rust_opaque_twin_rust_async.dart';
part 'rust_opaque_twin_sync_sse.freezed.dart';

HideData createOpaqueTwinSyncSse({dynamic hint}) =>
    RustLib.instance.api.createOpaqueTwinSyncSse(hint: hint);

HideData? createOptionOpaqueTwinSyncSse({HideData? opaque, dynamic hint}) =>
    RustLib.instance.api
        .createOptionOpaqueTwinSyncSse(opaque: opaque, hint: hint);

EnumOpaqueTwinSyncSseArray5 createArrayOpaqueEnumTwinSyncSse({dynamic hint}) =>
    RustLib.instance.api.createArrayOpaqueEnumTwinSyncSse(hint: hint);

String runEnumOpaqueTwinSyncSse(
        {required EnumOpaqueTwinSyncSse opaque, dynamic hint}) =>
    RustLib.instance.api.runEnumOpaqueTwinSyncSse(opaque: opaque, hint: hint);

String runOpaqueTwinSyncSse({required HideData opaque, dynamic hint}) =>
    RustLib.instance.api.runOpaqueTwinSyncSse(opaque: opaque, hint: hint);

String runOpaqueWithDelayTwinSyncSse(
        {required HideData opaque, dynamic hint}) =>
    RustLib.instance.api
        .runOpaqueWithDelayTwinSyncSse(opaque: opaque, hint: hint);

HideDataArray2 opaqueArrayTwinSyncSse({dynamic hint}) =>
    RustLib.instance.api.opaqueArrayTwinSyncSse(hint: hint);

String runNonCloneTwinSyncSse({required NonCloneData clone, dynamic hint}) =>
    RustLib.instance.api.runNonCloneTwinSyncSse(clone: clone, hint: hint);

NonSendHideData createSyncOpaqueTwinSyncSse({dynamic hint}) =>
    RustLib.instance.api.createSyncOpaqueTwinSyncSse(hint: hint);

void opaqueArrayRunTwinSyncSse({required HideDataArray2 data, dynamic hint}) =>
    RustLib.instance.api.opaqueArrayRunTwinSyncSse(data: data, hint: hint);

List<HideData> opaqueVecTwinSyncSse({dynamic hint}) =>
    RustLib.instance.api.opaqueVecTwinSyncSse(hint: hint);

void opaqueVecRunTwinSyncSse({required List<HideData> data, dynamic hint}) =>
    RustLib.instance.api.opaqueVecRunTwinSyncSse(data: data, hint: hint);

OpaqueNestedTwinSyncSse createNestedOpaqueTwinSyncSse({dynamic hint}) =>
    RustLib.instance.api.createNestedOpaqueTwinSyncSse(hint: hint);

void runNestedOpaqueTwinSyncSse(
        {required OpaqueNestedTwinSyncSse opaque, dynamic hint}) =>
    RustLib.instance.api.runNestedOpaqueTwinSyncSse(opaque: opaque, hint: hint);

String unwrapRustOpaqueTwinSyncSse({required HideData opaque, dynamic hint}) =>
    RustLib.instance.api
        .unwrapRustOpaqueTwinSyncSse(opaque: opaque, hint: hint);

/// Function to check the code generator.
/// FrbOpaqueReturn must be only return type.
/// FrbOpaqueReturn must not be used as an argument.
FrbOpaqueReturn frbGeneratorTestTwinSyncSse({dynamic hint}) =>
    RustLib.instance.api.frbGeneratorTestTwinSyncSse(hint: hint);

// Rust type: flutter_rust_bridge::RustOpaque<Box<dyn DartDebugTwinSyncSse>>
@sealed
class BoxDartDebugTwinSyncSse extends RustOpaque {
  BoxDartDebugTwinSyncSse.dcoDecode(dynamic wire)
      : super.dcoDecode(wire, _kStaticData);

  BoxDartDebugTwinSyncSse.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_BoxDartDebugTwinSyncSse,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_BoxDartDebugTwinSyncSse,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_BoxDartDebugTwinSyncSsePtr,
  );
}

@freezed
sealed class EnumOpaqueTwinSyncSse with _$EnumOpaqueTwinSyncSse {
  const factory EnumOpaqueTwinSyncSse.struct(
    HideData field0,
  ) = EnumOpaqueTwinSyncSse_Struct;
  const factory EnumOpaqueTwinSyncSse.primitive(
    I32 field0,
  ) = EnumOpaqueTwinSyncSse_Primitive;
  const factory EnumOpaqueTwinSyncSse.traitObj(
    BoxDartDebugTwinSyncSse field0,
  ) = EnumOpaqueTwinSyncSse_TraitObj;
  const factory EnumOpaqueTwinSyncSse.mutex(
    MutexHideData field0,
  ) = EnumOpaqueTwinSyncSse_Mutex;
  const factory EnumOpaqueTwinSyncSse.rwLock(
    RwLockHideData field0,
  ) = EnumOpaqueTwinSyncSse_RwLock;
}

class EnumOpaqueTwinSyncSseArray5
    extends NonGrowableListView<EnumOpaqueTwinSyncSse> {
  static const arraySize = 5;

  @internal
  List<EnumOpaqueTwinSyncSse> get inner => _inner;
  final List<EnumOpaqueTwinSyncSse> _inner;

  EnumOpaqueTwinSyncSseArray5(this._inner)
      : assert(_inner.length == arraySize),
        super(_inner);

  EnumOpaqueTwinSyncSseArray5.init(EnumOpaqueTwinSyncSse fill)
      : this(List<EnumOpaqueTwinSyncSse>.filled(arraySize, fill));
}

/// [`HideData`] has private fields.
class OpaqueNestedTwinSyncSse {
  final HideData first;
  final HideData second;

  const OpaqueNestedTwinSyncSse({
    required this.first,
    required this.second,
  });

  @override
  int get hashCode => first.hashCode ^ second.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OpaqueNestedTwinSyncSse &&
          runtimeType == other.runtimeType &&
          first == other.first &&
          second == other.second;
}
