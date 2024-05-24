// NOTE: This file is mimicking how a human developer writes tests,
// and is auto-generated from `basic_map_test.dart` by frb_internal
// Please do not modify manually, but modify the origin and re-run frb_internal generator

// NOTE: This file is mimicking how a human developer writes tests,
// and is auto-generated by frb_internal
// Please do not modify manually, but modify the origin and re-run frb_internal generator

import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:frb_example_pure_dart/src/rust/api/pseudo_manual/basic_map_twin_sse.dart';
import 'package:frb_example_pure_dart/src/rust/frb_generated.dart';
import 'package:test/test.dart';
import '../../test_utils.dart';
import 'dart:typed_data';
import 'package:frb_example_pure_dart/src/rust/api/pseudo_manual/basic_twin_sse.dart';

Future<void> main({bool skipRustLibInit = false}) async {
  if (!skipRustLibInit) await RustLib.init();

  group('basic_map', () {
    addTestsIdentityFunctionCall(exampleBasicMapTypeI8TwinSse, <Map<int, int>>[
      {},
      {42: 0},
      {42: -128},
      {42: 127},
      {42: 79},
      {42: -79}
    ]);
    addTestsIdentityFunctionCall(exampleBasicMapTypeI16TwinSse, <Map<int, int>>[
      {},
      {42: 0},
      {42: -32768},
      {42: 32767},
      {42: 12345},
      {42: -12345}
    ]);
    addTestsIdentityFunctionCall(exampleBasicMapTypeI32TwinSse, <Map<int, int>>[
      {},
      {42: 0},
      {42: -2147483648},
      {42: 2147483647},
      {42: 1234567890},
      {42: -1234567890}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeI64TwinSse, <Map<int, PlatformInt64>>[
      {},
      {42: PlatformInt64.parse("0")},
      {42: PlatformInt64.parse("-9007199254740992")},
      {42: PlatformInt64.parse("9007199254740992")},
      {42: PlatformInt64.parse("-9223372036854775808")},
      {42: PlatformInt64.parse("9223372036854775807")},
      {42: PlatformInt64.parse("1234567890123456789")},
      {42: PlatformInt64.parse("-1234567890123456789")}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeI128TwinSse, <Map<int, BigInt>>[
      {},
      {42: BigInt.parse("0")},
      {42: BigInt.parse("-9007199254740992")},
      {42: BigInt.parse("9007199254740992")},
      {42: BigInt.parse("-9223372036854775808")},
      {42: BigInt.parse("9223372036854775807")},
      {42: BigInt.parse("-170141183460469231731687303715884105728")},
      {42: BigInt.parse("170141183460469231731687303715884105727")}
    ]);
    addTestsIdentityFunctionCall(exampleBasicMapTypeU8TwinSse, <Map<int, int>>[
      {},
      {42: 0},
      {42: 255},
      {42: 123}
    ]);
    addTestsIdentityFunctionCall(exampleBasicMapTypeU16TwinSse, <Map<int, int>>[
      {},
      {42: 0},
      {42: 65535},
      {42: 12345}
    ]);
    addTestsIdentityFunctionCall(exampleBasicMapTypeU32TwinSse, <Map<int, int>>[
      {},
      {42: 0},
      {42: 4294967295},
      {42: 2468013579}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeU64TwinSse, <Map<int, BigInt>>[
      {},
      {42: BigInt.parse("0")},
      {42: BigInt.parse("9007199254740992")},
      {42: BigInt.parse("9223372036854775807")},
      {42: BigInt.parse("9223372036854775808")},
      {42: BigInt.parse("18446744073709551615")},
      {42: BigInt.parse("12345678912345678913")}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeU128TwinSse, <Map<int, BigInt>>[
      {},
      {42: BigInt.parse("0")},
      {42: BigInt.parse("9007199254740992")},
      {42: BigInt.parse("9223372036854775807")},
      {42: BigInt.parse("9223372036854775808")},
      {42: BigInt.parse("18446744073709551615")},
      {42: BigInt.parse("340282366920938463463374607431768211455")}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeIsizeTwinSse, <Map<int, PlatformInt64>>[
      {},
      {42: PlatformInt64.parse("0")},
      {42: PlatformInt64.parse("-2147483648")},
      {42: PlatformInt64.parse("2147483647")},
      {42: PlatformInt64.parse("-1234234567")},
      {42: PlatformInt64.parse("1234234567")},
      if (!kIsWeb) {42: PlatformInt64.parse("-9007199254740992")},
      if (!kIsWeb) {42: PlatformInt64.parse("9007199254740992")},
      if (!kIsWeb) {42: PlatformInt64.parse("-9223372036854775808")},
      if (!kIsWeb) {42: PlatformInt64.parse("9223372036854775807")}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeUsizeTwinSse, <Map<int, BigInt>>[
      {},
      {42: BigInt.parse("0")},
      {42: BigInt.parse("4294967295")},
      {42: BigInt.parse("1234234567")},
      if (!kIsWeb) {42: BigInt.parse("9007199254740992")},
      if (!kIsWeb) {42: BigInt.parse("9223372036854775807")},
      if (!kIsWeb) {42: BigInt.parse("18446744073709551615")},
      if (!kIsWeb) {42: BigInt.parse("12345678912345678913")}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeF32TwinSse, <Map<int, double>>[
      {},
      {42: 0},
      {42: -42.5},
      {42: 123456}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeF64TwinSse, <Map<int, double>>[
      {},
      {42: 0},
      {42: -42.5},
      {42: 123456}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeBoolTwinSse, <Map<int, bool>>[
      {},
      {42: false},
      {42: true}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeStringTwinSse, <Map<int, String>>[
      {},
      {42: ""},
      {42: "hello"},
      {42: "😂"}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeBytesTwinSse, <Map<int, Uint8List>>[
      {},
      {42: Uint8List.fromList([])},
      {
        42: Uint8List.fromList([255, 0])
      },
      {
        42: Uint8List.fromList([10, 20, 30, 40])
      }
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeBasicPrimitiveEnumTwinSseTwinSse,
        <Map<int, BasicPrimitiveEnumTwinSse>>[
          {},
          {42: BasicPrimitiveEnumTwinSse.apple},
          {42: BasicPrimitiveEnumTwinSse.orange}
        ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeBasicGeneralEnumTwinSseTwinSse,
        <Map<int, BasicGeneralEnumTwinSse>>[
          {},
          {42: BasicGeneralEnumTwinSse.apple(field: "one")},
          {42: BasicGeneralEnumTwinSse.orange()}
        ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeBasicStructTwinSseTwinSse,
        <Map<int, BasicStructTwinSse>>[
          {},
          {42: BasicStructTwinSse(apple: null, orange: null)},
          {42: BasicStructTwinSse(apple: "one", orange: 42)}
        ]);
  });
}
