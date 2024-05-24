// NOTE: This file is mimicking how a human developer writes tests,
// and is auto-generated from `basic_optional_test.dart` by frb_internal
// Please do not modify manually, but modify the origin and re-run frb_internal generator

// NOTE: This file is mimicking how a human developer writes tests,
// and is auto-generated by frb_internal
// Please do not modify manually, but modify the origin and re-run frb_internal generator

import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:frb_example_pure_dart/src/rust/api/pseudo_manual/basic_optional_twin_sse.dart';
import 'package:frb_example_pure_dart/src/rust/frb_generated.dart';
import 'package:test/test.dart';
import '../../test_utils.dart';
import 'dart:typed_data';
import 'package:frb_example_pure_dart/src/rust/api/pseudo_manual/basic_twin_sse.dart';

Future<void> main({bool skipRustLibInit = false}) async {
  if (!skipRustLibInit) await RustLib.init();

  group('basic_optional', () {
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeI8TwinSse, <int?>[null, 0, -128, 127, 79, -79]);
    addTestsIdentityFunctionCall(exampleBasicOptionalTypeI16TwinSse,
        <int?>[null, 0, -32768, 32767, 12345, -12345]);
    addTestsIdentityFunctionCall(exampleBasicOptionalTypeI32TwinSse,
        <int?>[null, 0, -2147483648, 2147483647, 1234567890, -1234567890]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeI64TwinSse, <PlatformInt64?>[
      null,
      PlatformInt64.parse("0"),
      PlatformInt64.parse("-9007199254740992"),
      PlatformInt64.parse("9007199254740992"),
      PlatformInt64.parse("-9223372036854775808"),
      PlatformInt64.parse("9223372036854775807"),
      PlatformInt64.parse("1234567890123456789"),
      PlatformInt64.parse("-1234567890123456789")
    ]);
    addTestsIdentityFunctionCall(exampleBasicOptionalTypeI128TwinSse, <BigInt?>[
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
        exampleBasicOptionalTypeU8TwinSse, <int?>[null, 0, 255, 123]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeU16TwinSse, <int?>[null, 0, 65535, 12345]);
    addTestsIdentityFunctionCall(exampleBasicOptionalTypeU32TwinSse,
        <int?>[null, 0, 4294967295, 2468013579]);
    addTestsIdentityFunctionCall(exampleBasicOptionalTypeU64TwinSse, <BigInt?>[
      null,
      BigInt.parse("0"),
      BigInt.parse("9007199254740992"),
      BigInt.parse("9223372036854775807"),
      BigInt.parse("9223372036854775808"),
      BigInt.parse("18446744073709551615"),
      BigInt.parse("12345678912345678913")
    ]);
    addTestsIdentityFunctionCall(exampleBasicOptionalTypeU128TwinSse, <BigInt?>[
      null,
      BigInt.parse("0"),
      BigInt.parse("9007199254740992"),
      BigInt.parse("9223372036854775807"),
      BigInt.parse("9223372036854775808"),
      BigInt.parse("18446744073709551615"),
      BigInt.parse("340282366920938463463374607431768211455")
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeIsizeTwinSse, <PlatformInt64?>[
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
        exampleBasicOptionalTypeUsizeTwinSse, <BigInt?>[
      null,
      BigInt.parse("0"),
      BigInt.parse("4294967295"),
      BigInt.parse("1234234567"),
      if (!kIsWeb) BigInt.parse("9007199254740992"),
      if (!kIsWeb) BigInt.parse("9223372036854775807"),
      if (!kIsWeb) BigInt.parse("18446744073709551615"),
      if (!kIsWeb) BigInt.parse("12345678912345678913")
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeF32TwinSse, <double?>[null, 0, -42.5, 123456]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeF64TwinSse, <double?>[null, 0, -42.5, 123456]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeBoolTwinSse, <bool?>[null, false, true]);
    addTestsIdentityFunctionCall(exampleBasicOptionalTypeStringTwinSse,
        <String?>[null, "", "hello", "😂"]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeBytesTwinSse, <Uint8List?>[
      null,
      Uint8List.fromList([]),
      Uint8List.fromList([255, 0]),
      Uint8List.fromList([10, 20, 30, 40])
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeBasicPrimitiveEnumTwinSseTwinSse,
        <BasicPrimitiveEnumTwinSse?>[
          null,
          BasicPrimitiveEnumTwinSse.apple,
          BasicPrimitiveEnumTwinSse.orange
        ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeBasicGeneralEnumTwinSseTwinSse,
        <BasicGeneralEnumTwinSse?>[
          null,
          BasicGeneralEnumTwinSse.apple(field: "one"),
          BasicGeneralEnumTwinSse.orange()
        ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeBasicStructTwinSseTwinSse,
        <BasicStructTwinSse?>[
          null,
          BasicStructTwinSse(apple: null, orange: null),
          BasicStructTwinSse(apple: "one", orange: 42)
        ]);
  });
}
