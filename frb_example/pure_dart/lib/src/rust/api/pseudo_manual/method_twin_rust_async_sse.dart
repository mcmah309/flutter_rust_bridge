// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.34.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:collection/collection.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
part 'method_twin_rust_async_sse.freezed.dart';

Future<SumWithTwinRustAsyncSse> getSumStructTwinRustAsyncSse({dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualMethodTwinRustAsyncSseGetSumStructTwinRustAsyncSse(
            hint: hint);

Future<SumWithTwinRustAsyncSseArray3> getSumArrayTwinRustAsyncSse(
        {required int a, required int b, required int c, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualMethodTwinRustAsyncSseGetSumArrayTwinRustAsyncSse(
            a: a, b: b, c: c, hint: hint);

// Rust type: RustOpaqueNom<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<StaticGetterOnlyTwinRustAsyncSse>>
@sealed
class StaticGetterOnlyTwinRustAsyncSse extends RustOpaque {
  StaticGetterOnlyTwinRustAsyncSse.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  StaticGetterOnlyTwinRustAsyncSse.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_StaticGetterOnlyTwinRustAsyncSse,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_StaticGetterOnlyTwinRustAsyncSse,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_StaticGetterOnlyTwinRustAsyncSsePtr,
  );

  static Future<int> get staticGetterTwinRustAsyncSse => RustLib.instance.api
      .crateApiPseudoManualMethodTwinRustAsyncSseStaticGetterOnlyTwinRustAsyncSseStaticGetterTwinRustAsyncSse();
}

class ConcatenateWithTwinRustAsyncSse {
  final String a;

  const ConcatenateWithTwinRustAsyncSse({
    required this.a,
  });

  static Future<String> concatenateStaticTwinRustAsyncSse(
          {required String a, required String b, dynamic hint}) =>
      RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseConcatenateWithTwinRustAsyncSseConcatenateStaticTwinRustAsyncSse(
              a: a, b: b, hint: hint);

  Future<String> concatenateTwinRustAsyncSse(
          {required String b, dynamic hint}) =>
      RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseConcatenateWithTwinRustAsyncSseConcatenateTwinRustAsyncSse(
              that: this, b: b, hint: hint);

  static Stream<int> handleSomeStaticStreamSinkSingleArgTwinRustAsyncSse(
          {dynamic hint}) =>
      RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseConcatenateWithTwinRustAsyncSseHandleSomeStaticStreamSinkSingleArgTwinRustAsyncSse(
              hint: hint);

  static Stream<
      Log2TwinRustAsyncSse> handleSomeStaticStreamSinkTwinRustAsyncSse(
          {required int key, required int max, dynamic hint}) =>
      RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseConcatenateWithTwinRustAsyncSseHandleSomeStaticStreamSinkTwinRustAsyncSse(
              key: key, max: max, hint: hint);

  Stream<int> handleSomeStreamSinkAt1TwinRustAsyncSse({dynamic hint}) => RustLib
      .instance.api
      .crateApiPseudoManualMethodTwinRustAsyncSseConcatenateWithTwinRustAsyncSseHandleSomeStreamSinkAt1TwinRustAsyncSse(
          that: this, hint: hint);

  Stream<Log2TwinRustAsyncSse> handleSomeStreamSinkTwinRustAsyncSse(
          {required int key, required int max, dynamic hint}) =>
      RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseConcatenateWithTwinRustAsyncSseHandleSomeStreamSinkTwinRustAsyncSse(
              that: this, key: key, max: max, hint: hint);

  static Future<ConcatenateWithTwinRustAsyncSse> newTwinRustAsyncSse(
          {required String a, dynamic hint}) =>
      RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseConcatenateWithTwinRustAsyncSseNewTwinRustAsyncSse(
              a: a, hint: hint);

  Future<String> get simpleGetterTwinRustAsyncSse => RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseConcatenateWithTwinRustAsyncSseSimpleGetterTwinRustAsyncSse(
        that: this,
      );

  @override
  int get hashCode => a.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConcatenateWithTwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          a == other.a;
}

class Log2TwinRustAsyncSse {
  final int key;
  final String value;

  const Log2TwinRustAsyncSse({
    required this.key,
    required this.value,
  });

  @override
  int get hashCode => key.hashCode ^ value.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Log2TwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          key == other.key &&
          value == other.value;
}

class MyCallableTwinRustAsyncSse {
  final String one;

  const MyCallableTwinRustAsyncSse({
    required this.one,
  });

  Future<String> call({required String two, dynamic hint}) => RustLib
      .instance.api
      .crateApiPseudoManualMethodTwinRustAsyncSseMyCallableTwinRustAsyncSseCall(
          that: this, two: two, hint: hint);

  @override
  int get hashCode => one.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyCallableTwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          one == other.one;
}

@freezed
sealed class SimpleEnumTwinRustAsyncSse with _$SimpleEnumTwinRustAsyncSse {
  const SimpleEnumTwinRustAsyncSse._();

  const factory SimpleEnumTwinRustAsyncSse.first() =
      SimpleEnumTwinRustAsyncSse_First;
  const factory SimpleEnumTwinRustAsyncSse.second(
    String field0,
  ) = SimpleEnumTwinRustAsyncSse_Second;

  static Future<SimpleEnumTwinRustAsyncSse> returnSelfTwinRustAsyncSse(
          {required String one, dynamic hint}) =>
      RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseSimpleEnumTwinRustAsyncSseReturnSelfTwinRustAsyncSse(
              one: one, hint: hint);

  Future<String> simpleMethodTwinRustAsyncSse({dynamic hint}) => RustLib
      .instance.api
      .crateApiPseudoManualMethodTwinRustAsyncSseSimpleEnumTwinRustAsyncSseSimpleMethodTwinRustAsyncSse(
          that: this, hint: hint);
}

enum SimplePrimitiveEnumTwinRustAsyncSse {
  first,
  second,
  ;

  Future<int> simpleMethodTwinRustAsyncSse({dynamic hint}) => RustLib
      .instance.api
      .crateApiPseudoManualMethodTwinRustAsyncSseSimplePrimitiveEnumTwinRustAsyncSseSimpleMethodTwinRustAsyncSse(
          that: this, hint: hint);
}

class SimpleStructTwinRustAsyncSse {
  final String one;

  const SimpleStructTwinRustAsyncSse({
    required this.one,
  });

  static Future<String> argSelfTwinRustAsyncSse(
          {required SimpleStructTwinRustAsyncSse a,
          required SimpleStructTwinRustAsyncSse b,
          dynamic hint}) =>
      RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseSimpleStructTwinRustAsyncSseArgSelfTwinRustAsyncSse(
              a: a, b: b, hint: hint);

  Future<String> receiverBorrowTwinRustAsyncSse({dynamic hint}) => RustLib
      .instance.api
      .crateApiPseudoManualMethodTwinRustAsyncSseSimpleStructTwinRustAsyncSseReceiverBorrowTwinRustAsyncSse(
          that: this, hint: hint);

  Future<String> receiverOwnTwinRustAsyncSse({dynamic hint}) => RustLib
      .instance.api
      .crateApiPseudoManualMethodTwinRustAsyncSseSimpleStructTwinRustAsyncSseReceiverOwnTwinRustAsyncSse(
          that: this, hint: hint);

  static Future<SimpleStructTwinRustAsyncSse> returnSelfTwinRustAsyncSse(
          {required String one, dynamic hint}) =>
      RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseSimpleStructTwinRustAsyncSseReturnSelfTwinRustAsyncSse(
              one: one, hint: hint);

  static Future<List<String>> vecSelfTwinRustAsyncSse(
          {required List<SimpleStructTwinRustAsyncSse> arg, dynamic hint}) =>
      RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseSimpleStructTwinRustAsyncSseVecSelfTwinRustAsyncSse(
              arg: arg, hint: hint);

  @override
  int get hashCode => one.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SimpleStructTwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          one == other.one;
}

class StaticOnlyTwinRustAsyncSse {
  final String one;

  const StaticOnlyTwinRustAsyncSse({
    required this.one,
  });

  static Future<int> staticMethodTwinRustAsyncSse(
          {required int a, dynamic hint}) =>
      RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseStaticOnlyTwinRustAsyncSseStaticMethodTwinRustAsyncSse(
              a: a, hint: hint);

  @override
  int get hashCode => one.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StaticOnlyTwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          one == other.one;
}

class SumWithTwinRustAsyncSse {
  final int x;

  const SumWithTwinRustAsyncSse({
    required this.x,
  });

  Future<int> sumTwinRustAsyncSse(
          {required int y, required int z, dynamic hint}) =>
      RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseSumWithTwinRustAsyncSseSumTwinRustAsyncSse(
              that: this, y: y, z: z, hint: hint);

  @override
  int get hashCode => x.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SumWithTwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          x == other.x;
}

class SumWithTwinRustAsyncSseArray3
    extends NonGrowableListView<SumWithTwinRustAsyncSse> {
  static const arraySize = 3;

  @internal
  List<SumWithTwinRustAsyncSse> get inner => _inner;
  final List<SumWithTwinRustAsyncSse> _inner;

  SumWithTwinRustAsyncSseArray3(this._inner)
      : assert(_inner.length == arraySize),
        super(_inner);

  SumWithTwinRustAsyncSseArray3.init(SumWithTwinRustAsyncSse fill)
      : this(List<SumWithTwinRustAsyncSse>.filled(arraySize, fill));
}
