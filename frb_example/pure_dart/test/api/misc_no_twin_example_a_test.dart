// FRB_INTERNAL_GENERATOR: {"forbiddenDuplicatorModes": ["sync", "rustAsync", "sse", "sync sse", "rustAsync sse"]}

import 'package:frb_example_pure_dart/src/rust/api/misc_no_twin_example_a.dart';
import 'package:frb_example_pure_dart/src/rust/frb_generated.dart';

Future<void> main({bool skipRustLibInit = false}) async {
  if (!skipRustLibInit) await RustLib.init();

  test('ItemContainerSolutionOneTwinNormal', () async {
    final container =
        await ItemContainerSolutionOneTwinNormal.createTwinNormal();

    expect(await container.getItemContentsTwinNormal(), [100]);

    // TODO
    // expect(container.name, 'hi');
    // container.name = 'hello';
    // expect(container.name, 'hello');
  });

  test('ItemContainerSolutionTwoTwinNormal', () async {
    final container =
        await ItemContainerSolutionTwoTwinNormal.createTwinNormal();

    expect(await container.getItemContentsTwinNormal(), [100]);

    expect(container.name, 'hi');
    container.name = 'hello';
    expect(container.name, 'hello');
  });
}
