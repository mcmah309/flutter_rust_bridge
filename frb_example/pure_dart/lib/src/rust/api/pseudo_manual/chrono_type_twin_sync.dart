// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.1.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

DateTime datetimeUtcTwinSync({required DateTime d, dynamic hint}) =>
    RustLib.instance.api.datetimeUtcTwinSync(d: d, hint: hint);

DateTime datetimeLocalTwinSync({required DateTime d, dynamic hint}) =>
    RustLib.instance.api.datetimeLocalTwinSync(d: d, hint: hint);

DateTime naivedatetimeTwinSync({required DateTime d, dynamic hint}) =>
    RustLib.instance.api.naivedatetimeTwinSync(d: d, hint: hint);

DateTime? optionalEmptyDatetimeUtcTwinSync({DateTime? d, dynamic hint}) =>
    RustLib.instance.api.optionalEmptyDatetimeUtcTwinSync(d: d, hint: hint);

Duration durationTwinSync({required Duration d, dynamic hint}) =>
    RustLib.instance.api.durationTwinSync(d: d, hint: hint);

List<Duration> handleTimestampsTwinSync(
        {required List<DateTime> timestamps,
        required DateTime epoch,
        dynamic hint}) =>
    RustLib.instance.api.handleTimestampsTwinSync(
        timestamps: timestamps, epoch: epoch, hint: hint);

List<DateTime> handleDurationsTwinSync(
        {required List<Duration> durations,
        required DateTime since,
        dynamic hint}) =>
    RustLib.instance.api.handleDurationsTwinSync(
        durations: durations, since: since, hint: hint);

TestChronoTwinSync testChronoTwinSync({dynamic hint}) =>
    RustLib.instance.api.testChronoTwinSync(hint: hint);

TestChronoTwinSync testPreciseChronoTwinSync({dynamic hint}) =>
    RustLib.instance.api.testPreciseChronoTwinSync(hint: hint);

Duration howLongDoesItTakeTwinSync(
        {required FeatureChronoTwinSync mine, dynamic hint}) =>
    RustLib.instance.api.howLongDoesItTakeTwinSync(mine: mine, hint: hint);

class FeatureChronoTwinSync {
  final DateTime utc;
  final DateTime local;
  final Duration duration;
  final DateTime naive;

  const FeatureChronoTwinSync({
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
      other is FeatureChronoTwinSync &&
          runtimeType == other.runtimeType &&
          utc == other.utc &&
          local == other.local &&
          duration == other.duration &&
          naive == other.naive;
}

class TestChronoTwinSync {
  final DateTime? dt;
  final DateTime? dt2;
  final Duration? du;

  const TestChronoTwinSync({
    this.dt,
    this.dt2,
    this.du,
  });

  @override
  int get hashCode => dt.hashCode ^ dt2.hashCode ^ du.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TestChronoTwinSync &&
          runtimeType == other.runtimeType &&
          dt == other.dt &&
          dt2 == other.dt2 &&
          du == other.du;
}
