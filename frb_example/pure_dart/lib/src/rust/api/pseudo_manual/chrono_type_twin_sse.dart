// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.34.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

Future<DateTime> datetimeUtcTwinSse({required DateTime d, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualChronoTypeTwinSseDatetimeUtcTwinSse(
            d: d, hint: hint);

Future<DateTime> datetimeLocalTwinSse({required DateTime d, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualChronoTypeTwinSseDatetimeLocalTwinSse(
            d: d, hint: hint);

Future<DateTime> naivedatetimeTwinSse({required DateTime d, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualChronoTypeTwinSseNaivedatetimeTwinSse(
            d: d, hint: hint);

Future<DateTime?> optionalEmptyDatetimeUtcTwinSse(
        {DateTime? d, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualChronoTypeTwinSseOptionalEmptyDatetimeUtcTwinSse(
            d: d, hint: hint);

Future<Duration> durationTwinSse({required Duration d, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualChronoTypeTwinSseDurationTwinSse(d: d, hint: hint);

Future<List<Duration>> handleTimestampsTwinSse(
        {required List<DateTime> timestamps,
        required DateTime epoch,
        dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualChronoTypeTwinSseHandleTimestampsTwinSse(
            timestamps: timestamps, epoch: epoch, hint: hint);

Future<List<DateTime>> handleDurationsTwinSse(
        {required List<Duration> durations,
        required DateTime since,
        dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualChronoTypeTwinSseHandleDurationsTwinSse(
            durations: durations, since: since, hint: hint);

Future<TestChronoTwinSse> testChronoTwinSse({dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualChronoTypeTwinSseTestChronoTwinSse(hint: hint);

Future<TestChronoTwinSse> testPreciseChronoTwinSse({dynamic hint}) => RustLib
    .instance.api
    .crateApiPseudoManualChronoTypeTwinSseTestPreciseChronoTwinSse(hint: hint);

Future<Duration> howLongDoesItTakeTwinSse(
        {required FeatureChronoTwinSse mine, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualChronoTypeTwinSseHowLongDoesItTakeTwinSse(
            mine: mine, hint: hint);

class FeatureChronoTwinSse {
  final DateTime utc;
  final DateTime local;
  final Duration duration;
  final DateTime naive;

  const FeatureChronoTwinSse({
    required this.utc,
    required this.local,
    required this.duration,
    required this.naive,
  });

  @override
  int get hashCode =>
      utc.hashCode ^ local.hashCode ^ duration.hashCode ^ naive.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FeatureChronoTwinSse &&
          runtimeType == other.runtimeType &&
          utc == other.utc &&
          local == other.local &&
          duration == other.duration &&
          naive == other.naive;
}

class TestChronoTwinSse {
  final DateTime? dt;
  final DateTime? dt2;
  final Duration? du;

  const TestChronoTwinSse({
    this.dt,
    this.dt2,
    this.du,
  });

  @override
  int get hashCode => dt.hashCode ^ dt2.hashCode ^ du.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TestChronoTwinSse &&
          runtimeType == other.runtimeType &&
          dt == other.dt &&
          dt2 == other.dt2 &&
          du == other.du;
}
