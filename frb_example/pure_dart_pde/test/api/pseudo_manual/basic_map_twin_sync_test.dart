// NOTE: This file is mimicking how a human developer writes tests,
// and is auto-generated from `basic_map_test.dart` by frb_internal
// Please do not modify manually, but modify the origin and re-run frb_internal generator

// NOTE: This file is mimicking how a human developer writes tests,
// and is auto-generated by frb_internal
// Please do not modify manually, but modify the origin and re-run frb_internal generator

import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:frb_example_pure_dart_pde/src/rust/api/pseudo_manual/basic_map_twin_sync.dart';
import 'package:frb_example_pure_dart_pde/src/rust/frb_generated.dart';
import 'package:test/test.dart';
import '../../test_utils.dart';
import 'dart:typed_data';
import 'package:frb_example_pure_dart_pde/src/rust/api/pseudo_manual/basic_twin_sync.dart';

Future<void> main({bool skipRustLibInit = false}) async {
  if (!skipRustLibInit) await RustLib.init();

  group('basic_map', () {
    addTestsIdentityFunctionCall(exampleBasicMapTypeI8TwinSync, <Map<int, int>>[
      {},
      {42: 0},
      {42: -128},
      {42: 127},
      {42: 79},
      {42: -79}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeI16TwinSync, <Map<int, int>>[
      {},
      {42: 0},
      {42: -32768},
      {42: 32767},
      {42: 12345},
      {42: -12345}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeI32TwinSync, <Map<int, int>>[
      {},
      {42: 0},
      {42: -2147483648},
      {42: 2147483647},
      {42: 1234567890},
      {42: -1234567890}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeI64TwinSync, <Map<int, PlatformInt64>>[
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
        exampleBasicMapTypeI128TwinSync, <Map<int, BigInt>>[
      {},
      {42: BigInt.parse("0")},
      {42: BigInt.parse("-9007199254740992")},
      {42: BigInt.parse("9007199254740992")},
      {42: BigInt.parse("-9223372036854775808")},
      {42: BigInt.parse("9223372036854775807")},
      {42: BigInt.parse("-170141183460469231731687303715884105728")},
      {42: BigInt.parse("170141183460469231731687303715884105727")}
    ]);
    addTestsIdentityFunctionCall(exampleBasicMapTypeU8TwinSync, <Map<int, int>>[
      {},
      {42: 0},
      {42: 255},
      {42: 123}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeU16TwinSync, <Map<int, int>>[
      {},
      {42: 0},
      {42: 65535},
      {42: 12345}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeU32TwinSync, <Map<int, int>>[
      {},
      {42: 0},
      {42: 4294967295},
      {42: 2468013579}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeU64TwinSync, <Map<int, BigInt>>[
      {},
      {42: BigInt.parse("0")},
      {42: BigInt.parse("9007199254740992")},
      {42: BigInt.parse("9223372036854775807")},
      {42: BigInt.parse("9223372036854775808")},
      {42: BigInt.parse("18446744073709551615")},
      {42: BigInt.parse("12345678912345678913")}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeU128TwinSync, <Map<int, BigInt>>[
      {},
      {42: BigInt.parse("0")},
      {42: BigInt.parse("9007199254740992")},
      {42: BigInt.parse("9223372036854775807")},
      {42: BigInt.parse("9223372036854775808")},
      {42: BigInt.parse("18446744073709551615")},
      {42: BigInt.parse("340282366920938463463374607431768211455")}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeIsizeTwinSync, <Map<int, PlatformInt64>>[
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
        exampleBasicMapTypeUsizeTwinSync, <Map<int, BigInt>>[
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
        exampleBasicMapTypeF32TwinSync, <Map<int, double>>[
      {},
      {42: 0},
      {42: -42.5},
      {42: 123456}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeF64TwinSync, <Map<int, double>>[
      {},
      {42: 0},
      {42: -42.5},
      {42: 123456}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeBoolTwinSync, <Map<int, bool>>[
      {},
      {42: false},
      {42: true}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeStringTwinSync, <Map<int, String>>[
      {},
      {42: ""},
      {42: "hello"},
      {42: "😂"}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeBytesTwinSync, <Map<int, Uint8List>>[
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
        exampleBasicMapTypeBasicPrimitiveEnumTwinSyncTwinSync,
        <Map<int, BasicPrimitiveEnumTwinSync>>[
          {},
          {42: BasicPrimitiveEnumTwinSync.apple},
          {42: BasicPrimitiveEnumTwinSync.orange}
        ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeBasicGeneralEnumTwinSyncTwinSync,
        <Map<int, BasicGeneralEnumTwinSync>>[
          {},
          {42: BasicGeneralEnumTwinSync.apple(field: "one")},
          {42: BasicGeneralEnumTwinSync.orange()}
        ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeBasicStructTwinSyncTwinSync,
        <Map<int, BasicStructTwinSync>>[
          {},
          {42: BasicStructTwinSync(apple: null, orange: null)},
          {42: BasicStructTwinSync(apple: "one", orange: 42)}
        ]);
  });
}
