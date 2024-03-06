// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.26.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:collection/collection.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

SumWithTwinSync getSumStructTwinSync({dynamic hint}) =>
    RustLib.instance.api.getSumStructTwinSync(hint: hint);

SumWithTwinSyncArray3 getSumArrayTwinSync(
        {required int a, required int b, required int c, dynamic hint}) =>
    RustLib.instance.api.getSumArrayTwinSync(a: a, b: b, c: c, hint: hint);

class ConcatenateWithTwinSync {
  final String a;

  const ConcatenateWithTwinSync({
    required this.a,
  });

  static String concatenateStaticTwinSync(
          {required String a, required String b, dynamic hint}) =>
      RustLib.instance.api.concatenateWithTwinSyncConcatenateStaticTwinSync(
          a: a, b: b, hint: hint);

  String concatenateTwinSync({required String b, dynamic hint}) =>
      RustLib.instance.api.concatenateWithTwinSyncConcatenateTwinSync(
        that: this,
        b: b,
      );

  static Stream<int> handleSomeStaticStreamSinkSingleArgTwinSync(
          {dynamic hint}) =>
      RustLib.instance.api
          .concatenateWithTwinSyncHandleSomeStaticStreamSinkSingleArgTwinSync(
              hint: hint);

  static Stream<Log2TwinSync> handleSomeStaticStreamSinkTwinSync(
          {required int key, required int max, dynamic hint}) =>
      RustLib.instance.api
          .concatenateWithTwinSyncHandleSomeStaticStreamSinkTwinSync(
              key: key, max: max, hint: hint);

  Stream<int> handleSomeStreamSinkAt1TwinSync({dynamic hint}) =>
      RustLib.instance.api
          .concatenateWithTwinSyncHandleSomeStreamSinkAt1TwinSync(
        that: this,
      );

  Stream<Log2TwinSync> handleSomeStreamSinkTwinSync(
          {required int key, required int max, dynamic hint}) =>
      RustLib.instance.api.concatenateWithTwinSyncHandleSomeStreamSinkTwinSync(
        that: this,
        key: key,
        max: max,
      );

  static ConcatenateWithTwinSync newTwinSync(
          {required String a, dynamic hint}) =>
      RustLib.instance.api.concatenateWithTwinSyncNewTwinSync(a: a, hint: hint);

  String get simpleGetterTwinSync =>
      RustLib.instance.api.concatenateWithTwinSyncSimpleGetterTwinSync(
        that: this,
      );

  @override
  int get hashCode => a.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConcatenateWithTwinSync &&
          runtimeType == other.runtimeType &&
          a == other.a;
}

class Log2TwinSync {
  final int key;
  final String value;

  const Log2TwinSync({
    required this.key,
    required this.value,
  });

  @override
  int get hashCode => key.hashCode ^ value.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Log2TwinSync &&
          runtimeType == other.runtimeType &&
          key == other.key &&
          value == other.value;
}

class MyCallableTwinSync {
  final String one;

  const MyCallableTwinSync({
    required this.one,
  });

  String call({required String two, dynamic hint}) =>
      RustLib.instance.api.myCallableTwinSyncCall(
        that: this,
        two: two,
      );

  @override
  int get hashCode => one.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyCallableTwinSync &&
          runtimeType == other.runtimeType &&
          one == other.one;
}

class SimpleStructTwinSync {
  final String one;

  const SimpleStructTwinSync({
    required this.one,
  });

  static String argSelfTwinSync(
          {required SimpleStructTwinSync a,
          required SimpleStructTwinSync b,
          dynamic hint}) =>
      RustLib.instance.api
          .simpleStructTwinSyncArgSelfTwinSync(a: a, b: b, hint: hint);

  static SimpleStructTwinSync returnSelfTwinSync(
          {required String one, dynamic hint}) =>
      RustLib.instance.api
          .simpleStructTwinSyncReturnSelfTwinSync(one: one, hint: hint);

  static List<String> vecSelfTwinSync(
          {required List<SimpleStructTwinSync> arg, dynamic hint}) =>
      RustLib.instance.api
          .simpleStructTwinSyncVecSelfTwinSync(arg: arg, hint: hint);

  @override
  int get hashCode => one.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SimpleStructTwinSync &&
          runtimeType == other.runtimeType &&
          one == other.one;
}

class SumWithTwinSync {
  final int x;

  const SumWithTwinSync({
    required this.x,
  });

  int sumTwinSync({required int y, required int z, dynamic hint}) =>
      RustLib.instance.api.sumWithTwinSyncSumTwinSync(
        that: this,
        y: y,
        z: z,
      );

  @override
  int get hashCode => x.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SumWithTwinSync &&
          runtimeType == other.runtimeType &&
          x == other.x;
}

class SumWithTwinSyncArray3 extends NonGrowableListView<SumWithTwinSync> {
  static const arraySize = 3;

  @internal
  List<SumWithTwinSync> get inner => _inner;
  final List<SumWithTwinSync> _inner;

  SumWithTwinSyncArray3(this._inner)
      : assert(_inner.length == arraySize),
        super(_inner);

  SumWithTwinSyncArray3.init(SumWithTwinSync fill)
      : this(List<SumWithTwinSync>.filled(arraySize, fill));
}
