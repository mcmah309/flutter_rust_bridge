// NOTE: This file is mimicking how a human developer writes tests,
// and is auto-generated from `basic_optional_test.dart` by frb_internal
// Please do not modify manually, but modify the origin and re-run frb_internal generator

// NOTE: This file is mimicking how a human developer writes tests,
// and is auto-generated by frb_internal
// Please do not modify manually, but modify the origin and re-run frb_internal generator

import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:frb_example_pure_dart/src/rust/api/pseudo_manual/basic_optional_twin_rust_async_sse.dart';
import 'package:frb_example_pure_dart/src/rust/frb_generated.dart';
import 'package:test/test.dart';
import '../../test_utils.dart';
import 'dart:typed_data';
import 'package:frb_example_pure_dart/src/rust/api/pseudo_manual/basic_twin_rust_async_sse.dart';

Future<void> main({bool skipRustLibInit = false}) async {
  if (!skipRustLibInit) await RustLib.init();

  group('basic_optional', () {
    addTestsIdentityFunctionCall(exampleBasicOptionalTypeI8TwinRustAsyncSse,
        <int?>[null, 0, -128, 127, 79, -79]);
    addTestsIdentityFunctionCall(exampleBasicOptionalTypeI16TwinRustAsyncSse,
        <int?>[null, 0, -32768, 32767, 12345, -12345]);
    addTestsIdentityFunctionCall(exampleBasicOptionalTypeI32TwinRustAsyncSse,
        <int?>[null, 0, -2147483648, 2147483647, 1234567890, -1234567890]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeI64TwinRustAsyncSse, <PlatformInt64?>[
      null,
      PlatformInt64.parse("0"),
      PlatformInt64.parse("-9007199254740992"),
      PlatformInt64.parse("9007199254740992"),
      PlatformInt64.parse("-9223372036854775808"),
      PlatformInt64.parse("9223372036854775807"),
      PlatformInt64.parse("1234567890123456789"),
      PlatformInt64.parse("-1234567890123456789")
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeI128TwinRustAsyncSse, <BigInt?>[
      null,
      BigInt.parse("0"),
      BigInt.parse("-9007199254740992"),
      BigInt.parse("9007199254740992"),
      BigInt.parse("-9223372036854775808"),
      BigInt.parse("9223372036854775807"),
      BigInt.parse("-170141183460469231731687303715884105728"),
      BigInt.parse("170141183460469231731687303715884105727")
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeU8TwinRustAsyncSse, <int?>[null, 0, 255, 123]);
    addTestsIdentityFunctionCall(exampleBasicOptionalTypeU16TwinRustAsyncSse,
        <int?>[null, 0, 65535, 12345]);
    addTestsIdentityFunctionCall(exampleBasicOptionalTypeU32TwinRustAsyncSse,
        <int?>[null, 0, 4294967295, 2468013579]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeU64TwinRustAsyncSse, <BigInt?>[
      null,
      BigInt.parse("0"),
      BigInt.parse("9007199254740992"),
      BigInt.parse("9223372036854775807"),
      BigInt.parse("9223372036854775808"),
      BigInt.parse("18446744073709551615"),
      BigInt.parse("12345678912345678913")
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeU128TwinRustAsyncSse, <BigInt?>[
      null,
      BigInt.parse("0"),
      BigInt.parse("9007199254740992"),
      BigInt.parse("9223372036854775807"),
      BigInt.parse("9223372036854775808"),
      BigInt.parse("18446744073709551615"),
      BigInt.parse("340282366920938463463374607431768211455")
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeIsizeTwinRustAsyncSse, <PlatformInt64?>[
      null,
      PlatformInt64.parse("0"),
      PlatformInt64.parse("-2147483648"),
      PlatformInt64.parse("2147483647"),
      PlatformInt64.parse("-1234234567"),
      PlatformInt64.parse("1234234567"),
      if (!kIsWeb) PlatformInt64.parse("-9007199254740992"),
      if (!kIsWeb) PlatformInt64.parse("9007199254740992"),
      if (!kIsWeb) PlatformInt64.parse("-9223372036854775808"),
      if (!kIsWeb) PlatformInt64.parse("9223372036854775807")
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeUsizeTwinRustAsyncSse, <BigInt?>[
      null,
      BigInt.parse("0"),
      BigInt.parse("4294967295"),
      BigInt.parse("1234234567"),
      if (!kIsWeb) BigInt.parse("9007199254740992"),
      if (!kIsWeb) BigInt.parse("9223372036854775807"),
      if (!kIsWeb) BigInt.parse("18446744073709551615"),
      if (!kIsWeb) BigInt.parse("12345678912345678913")
    ]);
    addTestsIdentityFunctionCall(exampleBasicOptionalTypeF32TwinRustAsyncSse,
        <double?>[null, 0, -42.5, 123456]);
    addTestsIdentityFunctionCall(exampleBasicOptionalTypeF64TwinRustAsyncSse,
        <double?>[null, 0, -42.5, 123456]);
    addTestsIdentityFunctionCall(exampleBasicOptionalTypeBoolTwinRustAsyncSse,
        <bool?>[null, false, true]);
    addTestsIdentityFunctionCall(exampleBasicOptionalTypeStringTwinRustAsyncSse,
        <String?>[null, "", "hello", "😂"]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeBytesTwinRustAsyncSse, <Uint8List?>[
      null,
      Uint8List.fromList([]),
      Uint8List.fromList([255, 0]),
      Uint8List.fromList([10, 20, 30, 40])
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeBasicPrimitiveEnumTwinRustAsyncSseTwinRustAsyncSse,
        <BasicPrimitiveEnumTwinRustAsyncSse?>[
          null,
          BasicPrimitiveEnumTwinRustAsyncSse.apple,
          BasicPrimitiveEnumTwinRustAsyncSse.orange
        ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeBasicGeneralEnumTwinRustAsyncSseTwinRustAsyncSse,
        <BasicGeneralEnumTwinRustAsyncSse?>[
          null,
          BasicGeneralEnumTwinRustAsyncSse.apple(field: "one"),
          BasicGeneralEnumTwinRustAsyncSse.orange()
        ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeBasicStructTwinRustAsyncSseTwinRustAsyncSse,
        <BasicStructTwinRustAsyncSse?>[
          null,
          BasicStructTwinRustAsyncSse(apple: null, orange: null),
          BasicStructTwinRustAsyncSse(apple: "one", orange: 42)
        ]);
  });
}
