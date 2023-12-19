// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.1.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:uuid/uuid.dart';

UuidValue handleUuidTwinSync({required UuidValue id, dynamic hint}) =>
    RustLib.instance.api.handleUuidTwinSync(id: id, hint: hint);

FeatureUuidTwinSync handleNestedUuidsTwinSync(
        {required FeatureUuidTwinSync ids, dynamic hint}) =>
    RustLib.instance.api.handleNestedUuidsTwinSync(ids: ids, hint: hint);

class FeatureUuidTwinSync {
  final UuidValue one;

  const FeatureUuidTwinSync({
    required this.one,
  });

  @override
  int get hashCode => one.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FeatureUuidTwinSync &&
          runtimeType == other.runtimeType &&
          one == other.one;
}
