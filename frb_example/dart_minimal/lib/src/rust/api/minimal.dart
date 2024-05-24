// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.35.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

Future<int> minimalAdder({required int a, required int b, dynamic hint}) =>
    RustLib.instance.api.crateApiMinimalMinimalAdder(a: a, b: b, hint: hint);

// Rust type: RustOpaqueNom<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<OpaqueItem>>
@sealed
class OpaqueItem extends RustOpaque {
  OpaqueItem.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  OpaqueItem.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_OpaqueItem,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_OpaqueItem,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_OpaqueItemPtr,
  );
}

class ItemContainerSolutionTwo {
  String name;
  final List<OpaqueItem> items;

  ItemContainerSolutionTwo({
    required this.name,
    required this.items,
  });

  static Future<ItemContainerSolutionTwo> create({dynamic hint}) =>
      RustLib.instance.api
          .crateApiMinimalItemContainerSolutionTwoCreate(hint: hint);

  Future<Int32List> getItemContents({dynamic hint}) => RustLib.instance.api
      .crateApiMinimalItemContainerSolutionTwoGetItemContents(
          that: this, hint: hint);

  @override
  int get hashCode => name.hashCode ^ items.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemContainerSolutionTwo &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          items == other.items;
}
