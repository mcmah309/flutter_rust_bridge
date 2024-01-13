// NOTE: This file is mimicking how a human developer writes tests,
// and is auto-generated from `basic_test.dart` by frb_internal
// Please do not modify manually, but modify the origin and re-run frb_internal generator

// NOTE: This file is mimicking how a human developer writes tests,
// and is auto-generated by frb_internal
// Please do not modify manually, but modify the origin and re-run frb_internal generator

import 'package:frb_example_pure_dart/src/rust/api/pseudo_manual/basic_twin_sync.dart';
import 'package:frb_example_pure_dart/src/rust/frb_generated.dart';
import 'package:test/test.dart';
import '../../test_utils.dart';

Future<void> main({bool skipRustLibInit = false}) async {
  if (!skipRustLibInit) await RustLib.init();

  group('basic', () {
    addTestsIdentityFunctionCall(
        exampleBasicTypeI8TwinSync, <int>[0, -128, 127]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeI16TwinSync, <int>[0, -32768, 32767]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeI32TwinSync, <int>[0, -2147483648, 2147483647]);
    addTestsIdentityFunctionCall(exampleBasicTypeI64TwinSync,
        <int>[0, -9007199254740992, 9007199254740992]);
    addTestsIdentityFunctionCall(exampleBasicTypeU8TwinSync, <int>[0, 255]);
    addTestsIdentityFunctionCall(exampleBasicTypeU16TwinSync, <int>[0, 65535]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeU32TwinSync, <int>[0, 4294967295]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeU64TwinSync, <int>[0, 9007199254740992]);
    addTestsIdentityFunctionCall(exampleBasicTypeIsizeTwinSync,
        <int>[0, -2147483648, 2147483647, -9007199254740992, 9007199254740992]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeUsizeTwinSync, <int>[0, 4294967295, 9007199254740992]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeF32TwinSync, <double>[0, -42.5, 123456]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeF64TwinSync, <double>[0, -42.5, 123456]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeBoolTwinSync, <bool>[false, true]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeStringTwinSync, <String>["", "hello", "😂"]);
    addTestsIdentityFunctionCall(exampleBasicTypeBytesTwinSync, <Uint8List>[
      Uint8List.fromList([]),
      Uint8List.fromList([255, 0]),
      Uint8List.fromList([10, 20, 30, 40])
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeBasicPrimitiveEnumTwinSyncTwinSync,
        <BasicPrimitiveEnumTwinSync>[
          BasicPrimitiveEnumTwinSync.apple,
          BasicPrimitiveEnumTwinSync.orange
        ]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeBasicGeneralEnumTwinSyncTwinSync,
        <BasicGeneralEnumTwinSync>[
          BasicGeneralEnumTwinSync.apple(field: "one"),
          BasicGeneralEnumTwinSync.orange()
        ]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeBasicStructTwinSyncTwinSync, <BasicStructTwinSync>[
      BasicStructTwinSync(apple: null, orange: null),
      BasicStructTwinSync(apple: "one", orange: 42)
    ]);
  });
}
