// NOTE: This file is mimicking how a human developer writes tests,
// and is auto-generated from `dart_opaque_test.dart` by frb_internal
// Please do not modify manually, but modify the origin and re-run frb_internal generator

import 'package:frb_example_pure_dart/src/rust/api/pseudo_manual/dart_opaque_twin_sync.dart';
import 'package:frb_example_pure_dart/src/rust/frb_generated.dart';
import 'package:test/test.dart';

import '../../test_utils.dart';

Future<void> main({bool skipRustLibInit = false}) async {
  if (!skipRustLibInit) await RustLib.init();

  String f() => 'Test_String';

  test('loopback', () async {
    await loopBackArrayGetTwinSync(
        opaque: await loopBackArrayTwinSync(opaque: f));
    await loopBackVecGetTwinSync(opaque: await loopBackVecTwinSync(opaque: f));
    await loopBackOptionGetTwinSync(
        opaque: await loopBackOptionTwinSync(opaque: f));

    var back1 = await loopBackTwinSync(opaque: f) as String Function();
    expect(back1(), 'Test_String');
    var back2 = await loopBackTwinSync(opaque: back1) as String Function();
    expect(back2(), 'Test_String');
    expect(identical(back2, f), isTrue);
  });

  test('drop', () async {
    expect(
        await asyncAcceptDartOpaqueTwinSync(opaque: createLargeList(mb: 200)),
        'async test');
  });

  test('nested', () async {
    var str = await createNestedDartOpaqueTwinSync(opaque1: f, opaque2: f);
    await getNestedDartOpaqueTwinSync(opaque: str);
  });

  test('enum', () async {
    var en = await createEnumDartOpaqueTwinSync(opaque: f);
    await getEnumDartOpaqueTwinSync(opaque: en);
  });

  test('nested', () async {
    var str = await createNestedDartOpaqueTwinSync(opaque1: f, opaque2: f);
    await getNestedDartOpaqueTwinSync(opaque: str);
  });

  test('enum', () async {
    var en = await createEnumDartOpaqueTwinSync(opaque: f);
    await getEnumDartOpaqueTwinSync(opaque: en);
  });
}
