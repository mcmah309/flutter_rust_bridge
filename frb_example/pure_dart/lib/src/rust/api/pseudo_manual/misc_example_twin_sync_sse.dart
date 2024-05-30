// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.36.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../auxiliary/sample_types.dart';
import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
part 'misc_example_twin_sync_sse.freezed.dart';

// The type `MySizeFreezedTwinSyncSse` is not used by any `pub` functions, thus it is ignored.
// The functions `visibility_restricted_func_twin_sync_sse`, `fmt`, `clone`, `fmt`, `clone`, `fmt`, `clone`, `fmt`, `clone` are not `pub`, thus are ignored.

MyTreeNodeTwinSyncSse handleComplexStructTwinSyncSse(
        {required MyTreeNodeTwinSyncSse s}) =>
    RustLib.instance.api
        .crateApiPseudoManualMiscExampleTwinSyncSseHandleComplexStructTwinSyncSse(
            s: s);

List<WeekdaysTwinSyncSse> listOfPrimitiveEnumsTwinSyncSse(
        {required List<WeekdaysTwinSyncSse> weekdays}) =>
    RustLib.instance.api
        .crateApiPseudoManualMiscExampleTwinSyncSseListOfPrimitiveEnumsTwinSyncSse(
            weekdays: weekdays);

MyNestedStructTwinSyncSse handleNestedStructTwinSyncSse(
        {required MyNestedStructTwinSyncSse s}) =>
    RustLib.instance.api
        .crateApiPseudoManualMiscExampleTwinSyncSseHandleNestedStructTwinSyncSse(
            s: s);

BigBuffersTwinSyncSse handleBigBuffersTwinSyncSse() => RustLib.instance.api
    .crateApiPseudoManualMiscExampleTwinSyncSseHandleBigBuffersTwinSyncSse();

AbcTwinSyncSse testAbcEnumTwinSyncSse({required AbcTwinSyncSse abc}) => RustLib
    .instance.api
    .crateApiPseudoManualMiscExampleTwinSyncSseTestAbcEnumTwinSyncSse(abc: abc);

StructWithEnumTwinSyncSse testStructWithEnumTwinSyncSse(
        {required StructWithEnumTwinSyncSse se}) =>
    RustLib.instance.api
        .crateApiPseudoManualMiscExampleTwinSyncSseTestStructWithEnumTwinSyncSse(
            se: se);

String handleStringTwinSyncSse({required String s}) => RustLib.instance.api
    .crateApiPseudoManualMiscExampleTwinSyncSseHandleStringTwinSyncSse(s: s);

String handleCharTwinSyncSse({required String arg}) => RustLib.instance.api
    .crateApiPseudoManualMiscExampleTwinSyncSseHandleCharTwinSyncSse(arg: arg);

Uint8List handleVecU8TwinSyncSse({required List<int> v}) => RustLib.instance.api
    .crateApiPseudoManualMiscExampleTwinSyncSseHandleVecU8TwinSyncSse(v: v);

MySize handleStructTwinSyncSse({required MySize arg, required MySize boxed}) =>
    RustLib.instance.api
        .crateApiPseudoManualMiscExampleTwinSyncSseHandleStructTwinSyncSse(
            arg: arg, boxed: boxed);

class ATwinSyncSse {
  final String a;

  const ATwinSyncSse({
    required this.a,
  });

  @override
  int get hashCode => a.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ATwinSyncSse && runtimeType == other.runtimeType && a == other.a;
}

@freezed
sealed class AbcTwinSyncSse with _$AbcTwinSyncSse {
  const AbcTwinSyncSse._();

  const factory AbcTwinSyncSse.a(
    ATwinSyncSse field0,
  ) = AbcTwinSyncSse_A;
  const factory AbcTwinSyncSse.b(
    BTwinSyncSse field0,
  ) = AbcTwinSyncSse_B;
  const factory AbcTwinSyncSse.c(
    CTwinSyncSse field0,
  ) = AbcTwinSyncSse_C;
  const factory AbcTwinSyncSse.justInt(
    int field0,
  ) = AbcTwinSyncSse_JustInt;
}

class BTwinSyncSse {
  final int b;

  const BTwinSyncSse({
    required this.b,
  });

  @override
  int get hashCode => b.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BTwinSyncSse && runtimeType == other.runtimeType && b == other.b;
}

class BigBuffersTwinSyncSse {
  final Int64List int64;
  final Uint64List uint64;

  const BigBuffersTwinSyncSse({
    required this.int64,
    required this.uint64,
  });

  @override
  int get hashCode => int64.hashCode ^ uint64.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BigBuffersTwinSyncSse &&
          runtimeType == other.runtimeType &&
          int64 == other.int64 &&
          uint64 == other.uint64;
}

class CTwinSyncSse {
  final bool c;

  const CTwinSyncSse({
    required this.c,
  });

  @override
  int get hashCode => c.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CTwinSyncSse && runtimeType == other.runtimeType && c == other.c;
}

class MyNestedStructTwinSyncSse {
  final MyTreeNodeTwinSyncSse treeNode;
  final WeekdaysTwinSyncSse weekday;

  const MyNestedStructTwinSyncSse({
    required this.treeNode,
    required this.weekday,
  });

  @override
  int get hashCode => treeNode.hashCode ^ weekday.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyNestedStructTwinSyncSse &&
          runtimeType == other.runtimeType &&
          treeNode == other.treeNode &&
          weekday == other.weekday;
}

class MyTreeNodeTwinSyncSse {
  final int valueI32;
  final Uint8List valueVecU8;
  final bool valueBoolean;
  final List<MyTreeNodeTwinSyncSse> children;

  const MyTreeNodeTwinSyncSse({
    required this.valueI32,
    required this.valueVecU8,
    required this.valueBoolean,
    required this.children,
  });

  @override
  int get hashCode =>
      valueI32.hashCode ^
      valueVecU8.hashCode ^
      valueBoolean.hashCode ^
      children.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyTreeNodeTwinSyncSse &&
          runtimeType == other.runtimeType &&
          valueI32 == other.valueI32 &&
          valueVecU8 == other.valueVecU8 &&
          valueBoolean == other.valueBoolean &&
          children == other.children;
}

class StructWithEnumTwinSyncSse {
  final AbcTwinSyncSse abc1;
  final AbcTwinSyncSse abc2;

  const StructWithEnumTwinSyncSse({
    required this.abc1,
    required this.abc2,
  });

  @override
  int get hashCode => abc1.hashCode ^ abc2.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StructWithEnumTwinSyncSse &&
          runtimeType == other.runtimeType &&
          abc1 == other.abc1 &&
          abc2 == other.abc2;
}

enum WeekdaysTwinSyncSse {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
  ;
}
