// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.34.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

Future<void> makeStackBufferOverflow({dynamic hint}) =>
    RustLib.instance.api.crateApiSimpleMakeStackBufferOverflow(hint: hint);

Future<void> makeHeapUseAfterFree({dynamic hint}) =>
    RustLib.instance.api.crateApiSimpleMakeHeapUseAfterFree(hint: hint);

Future<void> makeUseOfUninitializedValue({dynamic hint}) =>
    RustLib.instance.api.crateApiSimpleMakeUseOfUninitializedValue(hint: hint);

Future<void> makeMemoryLeak({dynamic hint}) =>
    RustLib.instance.api.crateApiSimpleMakeMemoryLeak(hint: hint);

Future<void> makeDataRace({dynamic hint}) =>
    RustLib.instance.api.crateApiSimpleMakeDataRace(hint: hint);
