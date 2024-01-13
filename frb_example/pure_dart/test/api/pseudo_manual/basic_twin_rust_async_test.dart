// NOTE: This file is mimicking how a human developer writes tests,
// and is auto-generated from `basic_test.dart` by frb_internal
// Please do not modify manually, but modify the origin and re-run frb_internal generator

// NOTE: This file is mimicking how a human developer writes tests,
// and is auto-generated by frb_internal
// Please do not modify manually, but modify the origin and re-run frb_internal generator

import 'package:frb_example_pure_dart/src/rust/api/pseudo_manual/basic_twin_rust_async.dart';
import 'package:frb_example_pure_dart/src/rust/frb_generated.dart';
import 'package:test/test.dart';
import '../../test_utils.dart';

Future<void> main({bool skipRustLibInit = false}) async {
  if (!skipRustLibInit) await RustLib.init();

  group('basic', () {
    addTestsIdentityFunctionCall(
        exampleBasicTypeI8TwinRustAsync, <int>[0, -128, 127]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeI16TwinRustAsync, <int>[0, -32768, 32767]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeI32TwinRustAsync, <int>[0, -2147483648, 2147483647]);
    addTestsIdentityFunctionCall(exampleBasicTypeI64TwinRustAsync,
        <int>[0, -9007199254740992, 9007199254740992]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeU8TwinRustAsync, <int>[0, 255]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeU16TwinRustAsync, <int>[0, 65535]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeU32TwinRustAsync, <int>[0, 4294967295]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeU64TwinRustAsync, <int>[0, 9007199254740992]);
    addTestsIdentityFunctionCall(exampleBasicTypeIsizeTwinRustAsync,
        <int>[0, -2147483648, 2147483647, -9007199254740992, 9007199254740992]);
    addTestsIdentityFunctionCall(exampleBasicTypeUsizeTwinRustAsync,
        <int>[0, 4294967295, 9007199254740992]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeF32TwinRustAsync, <double>[0, -42.5, 123456]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeF64TwinRustAsync, <double>[0, -42.5, 123456]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeBoolTwinRustAsync, <bool>[false, true]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeStringTwinRustAsync, <String>["", "hello", "😂"]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeBytesTwinRustAsync, <Uint8List>[
      Uint8List.fromList([]),
      Uint8List.fromList([255, 0]),
      Uint8List.fromList([10, 20, 30, 40])
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeBasicPrimitiveEnumTwinRustAsyncTwinRustAsync,
        <BasicPrimitiveEnumTwinRustAsync>[
          BasicPrimitiveEnumTwinRustAsync.apple,
          BasicPrimitiveEnumTwinRustAsync.orange
        ]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeBasicGeneralEnumTwinRustAsyncTwinRustAsync,
        <BasicGeneralEnumTwinRustAsync>[
          BasicGeneralEnumTwinRustAsync.apple(field: "one"),
          BasicGeneralEnumTwinRustAsync.orange()
        ]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeBasicStructTwinRustAsyncTwinRustAsync,
        <BasicStructTwinRustAsync>[
          BasicStructTwinRustAsync(apple: null, orange: null),
          BasicStructTwinRustAsync(apple: "one", orange: 42)
        ]);
  });
}
