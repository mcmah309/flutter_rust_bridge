// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.37.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

Future<int> minimalAdder({required int a, required int b}) =>
    RustLib.instance.api.crateApiMinimalMinimalAdder(a: a, b: b);

class StructWithTraitTwinNormal {
  final int value;

  const StructWithTraitTwinNormal({
    required this.value,
  });

  static Future<StructWithTraitTwinNormal> simpleTraitFnTwinNormal() =>
      RustLib.instance.api
          .crateApiMinimalStructWithTraitTwinNormalSimpleTraitFnTwinNormal();

  static Future<int> simpleTraitFnWithDefaultImplTwinNormal() => RustLib
      .instance.api
      .crateApiMinimalStructWithTraitTwinNormalSimpleTraitFnWithDefaultImplTwinNormal();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StructWithTraitTwinNormal &&
          runtimeType == other.runtimeType &&
          value == other.value;
}
