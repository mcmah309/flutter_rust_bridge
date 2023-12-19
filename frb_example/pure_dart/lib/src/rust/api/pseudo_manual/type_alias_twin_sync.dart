// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.1.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../auxiliary/sample_types.dart';
import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

int handleTypeAliasIdTwinSync({required int input, dynamic hint}) =>
    RustLib.instance.api.handleTypeAliasIdTwinSync(input: input, hint: hint);

int handleTypeNestAliasIdTwinSync({required int input, dynamic hint}) =>
    RustLib.instance.api
        .handleTypeNestAliasIdTwinSync(input: input, hint: hint);

TestModelTwinSync handleTypeAliasModelTwinSync(
        {required int input, dynamic hint}) =>
    RustLib.instance.api.handleTypeAliasModelTwinSync(input: input, hint: hint);

class TestModelTwinSync {
  final int id;
  final String name;
  final MyEnum aliasEnum;
  final MyStruct aliasStruct;

  const TestModelTwinSync({
    required this.id,
    required this.name,
    required this.aliasEnum,
    required this.aliasStruct,
  });

  @override
  int get hashCode =>
      id.hashCode ^ name.hashCode ^ aliasEnum.hashCode ^ aliasStruct.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TestModelTwinSync &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          aliasEnum == other.aliasEnum &&
          aliasStruct == other.aliasStruct;
}
