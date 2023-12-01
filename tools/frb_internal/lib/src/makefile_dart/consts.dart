import 'dart:io';

import 'package:flutter_rust_bridge_internal/src/utils/makefile_dart_infra.dart';

const kRustPackages = [
  'frb_rust',
  'frb_codegen',
  'frb_macros',
  'frb_example/dart_minimal/rust',
  'frb_example/pure_dart/rust',
  // TODO `with_flutter` example
];

const kDartExamplePackages = [
  'frb_example/dart_minimal',
  'frb_example/pure_dart',
  // TODO `with_flutter` example
];

const kDartNonExamplePackages = [
  'frb_dart',
  'frb_utils',
  'tools/frb_internal',
];

const kDartPackages = [
  ...kDartNonExamplePackages,
  ...kDartExamplePackages,
];

enum DartMode { dart, flutter }

const kDartModeOfPackage = {
  'frb_dart': DartMode.dart,
  'frb_utils': DartMode.dart,
  'tools/frb_internal': DartMode.dart,
  'frb_example/dart_minimal': DartMode.dart,
  'frb_example/pure_dart': DartMode.dart,
  'frb_example/deliberate_bad': DartMode.dart,
  'frb_example/flutter_via_create': DartMode.flutter,
  'frb_example/flutter_via_integrate': DartMode.flutter,
  // TODO `with_flutter` example
};

final exec = SimpleExecutor(
  env: {
    'CARGO_TERM_COLOR': 'always',
  },
  // Use project root directory
  pwd: Directory.current.parent.parent.uri.toFilePath(),
);

/// Normally, `dart pub get` will be run automatically when executing `dart test` and so on.
/// But there seems to be a bug currently.
/// Temporary workaround before https://github.com/dart-lang/sdk/issues/54160 is fixed.
Future<void> runPubGetIfNotRunYet(String package) async {
  if (!await Directory('${exec.pwd}/$package/.dart_tool').exists()) {
    final cmd = switch (kDartModeOfPackage[package]!) {
      DartMode.dart => 'dart --enable-experiment=native-assets',
      DartMode.flutter => 'flutter',
    };
    await exec('$cmd pub get', relativePwd: package);
  }
}
