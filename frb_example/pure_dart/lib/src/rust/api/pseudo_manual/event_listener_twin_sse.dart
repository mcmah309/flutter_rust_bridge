// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.34.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
part 'event_listener_twin_sse.freezed.dart';

// The type `EVENTS` is not used by any `pub` functions, thus it is ignored.

Future<Stream<EventTwinSse>> registerEventListenerTwinSse({dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualEventListenerTwinSseRegisterEventListenerTwinSse(
            hint: hint);

Future<void> closeEventListenerTwinSse({dynamic hint}) => RustLib.instance.api
    .crateApiPseudoManualEventListenerTwinSseCloseEventListenerTwinSse(
        hint: hint);

Future<void> createEventTwinSse(
        {required String address, required String payload, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualEventListenerTwinSseCreateEventTwinSse(
            address: address, payload: payload, hint: hint);

@freezed
class EventTwinSse with _$EventTwinSse {
  const EventTwinSse._();
  const factory EventTwinSse({
    required String address,
    required String payload,
  }) = _EventTwinSse;
  Future<String> asStringTwinSse({dynamic hint}) => RustLib.instance.api
      .crateApiPseudoManualEventListenerTwinSseEventTwinSseAsStringTwinSse(
          that: this, hint: hint);
}
