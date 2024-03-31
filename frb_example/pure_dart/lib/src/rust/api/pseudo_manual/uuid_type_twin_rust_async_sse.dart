// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.29.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:uuid/uuid.dart';

Future<UuidValue> handleUuidTwinRustAsyncSse(
        {required UuidValue id, dynamic hint}) =>
    RustLib.instance.api.handleUuidTwinRustAsyncSse(id: id, hint: hint);

Future<List<UuidValue>> handleUuidsTwinRustAsyncSse(
        {required List<UuidValue> ids, dynamic hint}) =>
    RustLib.instance.api.handleUuidsTwinRustAsyncSse(ids: ids, hint: hint);

Future<FeatureUuidTwinRustAsyncSse> handleNestedUuidsTwinRustAsyncSse(
        {required FeatureUuidTwinRustAsyncSse ids, dynamic hint}) =>
    RustLib.instance.api
        .handleNestedUuidsTwinRustAsyncSse(ids: ids, hint: hint);

class FeatureUuidTwinRustAsyncSse {
  final UuidValue one;

  const FeatureUuidTwinRustAsyncSse({
    required this.one,
  });

  @override
  int get hashCode => one.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FeatureUuidTwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          one == other.one;
}
