// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.34.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

String borrowStringTwinSync({required String arg, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualOwnershipTwinSyncBorrowStringTwinSync(
            arg: arg, hint: hint);

String borrowStrTwinSync({required String arg, dynamic hint}) =>
    RustLib.instance.api.crateApiPseudoManualOwnershipTwinSyncBorrowStrTwinSync(
        arg: arg, hint: hint);

int borrowI32TwinSync({required int arg, dynamic hint}) =>
    RustLib.instance.api.crateApiPseudoManualOwnershipTwinSyncBorrowI32TwinSync(
        arg: arg, hint: hint);

SimpleStructForBorrowTwinSync borrowStructTwinSync(
        {required SimpleStructForBorrowTwinSync arg, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualOwnershipTwinSyncBorrowStructTwinSync(
            arg: arg, hint: hint);

class SimpleStructForBorrowTwinSync {
  final String one;

  const SimpleStructForBorrowTwinSync({
    required this.one,
  });

  @override
  int get hashCode => one.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SimpleStructForBorrowTwinSync &&
          runtimeType == other.runtimeType &&
          one == other.one;
}
