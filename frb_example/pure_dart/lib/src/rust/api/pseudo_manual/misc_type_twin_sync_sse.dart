// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.34.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../auxiliary/sample_types.dart';
import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

void funcReturnUnitTwinSyncSse({dynamic hint}) => RustLib.instance.api
    .crateApiPseudoManualMiscTypeTwinSyncSseFuncReturnUnitTwinSyncSse(
        hint: hint);

List<MySize> handleListOfStructTwinSyncSse(
        {required List<MySize> l, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualMiscTypeTwinSyncSseHandleListOfStructTwinSyncSse(
            l: l, hint: hint);

List<String> handleStringListTwinSyncSse(
        {required List<String> names, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualMiscTypeTwinSyncSseHandleStringListTwinSyncSse(
            names: names, hint: hint);

EmptyTwinSyncSse emptyStructTwinSyncSse(
        {required EmptyTwinSyncSse empty, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualMiscTypeTwinSyncSseEmptyStructTwinSyncSse(
            empty: empty, hint: hint);

class EmptyTwinSyncSse {
  const EmptyTwinSyncSse();

  @override
  int get hashCode => 0;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmptyTwinSyncSse && runtimeType == other.runtimeType;
}
