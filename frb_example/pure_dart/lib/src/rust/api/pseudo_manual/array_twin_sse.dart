// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.26.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import '../array.dart';
import 'package:collection/collection.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

Future<U8Array5> getArrayTwinSse({dynamic hint}) =>
    RustLib.instance.api.getArrayTwinSse(hint: hint);

Future<PointTwinSseArray2> getComplexArrayTwinSse({dynamic hint}) =>
    RustLib.instance.api.getComplexArrayTwinSse(hint: hint);

Future<MessageIdTwinSse> newMsgidTwinSse(
        {required U8Array32 id, dynamic hint}) =>
    RustLib.instance.api.newMsgidTwinSse(id: id, hint: hint);

Future<U8Array32> useMsgidTwinSse(
        {required MessageIdTwinSse id, dynamic hint}) =>
    RustLib.instance.api.useMsgidTwinSse(id: id, hint: hint);

Future<BlobTwinSse> boxedBlobTwinSse(
        {required U8Array1600 blob, dynamic hint}) =>
    RustLib.instance.api.boxedBlobTwinSse(blob: blob, hint: hint);

Future<U8Array1600> useBoxedBlobTwinSse(
        {required BlobTwinSse blob, dynamic hint}) =>
    RustLib.instance.api.useBoxedBlobTwinSse(blob: blob, hint: hint);

Future<FeedIdTwinSse> returnBoxedFeedIdTwinSse(
        {required U8Array8 id, dynamic hint}) =>
    RustLib.instance.api.returnBoxedFeedIdTwinSse(id: id, hint: hint);

Future<U8Array8> returnBoxedRawFeedIdTwinSse(
        {required FeedIdTwinSse id, dynamic hint}) =>
    RustLib.instance.api.returnBoxedRawFeedIdTwinSse(id: id, hint: hint);

Future<TestIdTwinSse> funcTestIdTwinSse(
        {required TestIdTwinSse id, dynamic hint}) =>
    RustLib.instance.api.funcTestIdTwinSse(id: id, hint: hint);

Future<double> lastNumberTwinSse({required F64Array16 array, dynamic hint}) =>
    RustLib.instance.api.lastNumberTwinSse(array: array, hint: hint);

Future<TestIdTwinSseArray2> nestedIdTwinSse(
        {required TestIdTwinSseArray4 id, dynamic hint}) =>
    RustLib.instance.api.nestedIdTwinSse(id: id, hint: hint);

class BlobTwinSse {
  final U8Array1600 field0;

  const BlobTwinSse({
    required this.field0,
  });

  @override
  int get hashCode => field0.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BlobTwinSse &&
          runtimeType == other.runtimeType &&
          field0 == other.field0;
}

class FeedIdTwinSse {
  final U8Array8 field0;

  const FeedIdTwinSse({
    required this.field0,
  });

  @override
  int get hashCode => field0.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FeedIdTwinSse &&
          runtimeType == other.runtimeType &&
          field0 == other.field0;
}

class MessageIdTwinSse {
  final U8Array32 field0;

  const MessageIdTwinSse({
    required this.field0,
  });

  @override
  int get hashCode => field0.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MessageIdTwinSse &&
          runtimeType == other.runtimeType &&
          field0 == other.field0;
}

class PointTwinSse {
  final double x;
  final double y;

  const PointTwinSse({
    required this.x,
    required this.y,
  });

  @override
  int get hashCode => x.hashCode ^ y.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PointTwinSse &&
          runtimeType == other.runtimeType &&
          x == other.x &&
          y == other.y;
}

class PointTwinSseArray2 extends NonGrowableListView<PointTwinSse> {
  static const arraySize = 2;

  @internal
  List<PointTwinSse> get inner => _inner;
  final List<PointTwinSse> _inner;

  PointTwinSseArray2(this._inner)
      : assert(_inner.length == arraySize),
        super(_inner);

  PointTwinSseArray2.init(PointTwinSse fill)
      : this(List<PointTwinSse>.filled(arraySize, fill));
}

class TestIdTwinSse {
  final I32Array2 field0;

  const TestIdTwinSse({
    required this.field0,
  });

  @override
  int get hashCode => field0.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TestIdTwinSse &&
          runtimeType == other.runtimeType &&
          field0 == other.field0;
}

class TestIdTwinSseArray2 extends NonGrowableListView<TestIdTwinSse> {
  static const arraySize = 2;

  @internal
  List<TestIdTwinSse> get inner => _inner;
  final List<TestIdTwinSse> _inner;

  TestIdTwinSseArray2(this._inner)
      : assert(_inner.length == arraySize),
        super(_inner);

  TestIdTwinSseArray2.init(TestIdTwinSse fill)
      : this(List<TestIdTwinSse>.filled(arraySize, fill));
}

class TestIdTwinSseArray4 extends NonGrowableListView<TestIdTwinSse> {
  static const arraySize = 4;

  @internal
  List<TestIdTwinSse> get inner => _inner;
  final List<TestIdTwinSse> _inner;

  TestIdTwinSseArray4(this._inner)
      : assert(_inner.length == arraySize),
        super(_inner);

  TestIdTwinSseArray4.init(TestIdTwinSse fill)
      : this(List<TestIdTwinSse>.filled(arraySize, fill));
}
