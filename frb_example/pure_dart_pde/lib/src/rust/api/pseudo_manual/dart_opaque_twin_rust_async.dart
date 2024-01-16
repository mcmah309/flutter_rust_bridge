// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.19.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import '../dart_opaque.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
part 'dart_opaque_twin_rust_async.freezed.dart';

Future<String> asyncAcceptDartOpaqueTwinRustAsync(
        {required Object opaque, dynamic hint}) =>
    RustLib.instance.api
        .asyncAcceptDartOpaqueTwinRustAsync(opaque: opaque, hint: hint);

Future<Object> loopBackTwinRustAsync({required Object opaque, dynamic hint}) =>
    RustLib.instance.api.loopBackTwinRustAsync(opaque: opaque, hint: hint);

Future<Object?> loopBackOptionTwinRustAsync(
        {required Object opaque, dynamic hint}) =>
    RustLib.instance.api
        .loopBackOptionTwinRustAsync(opaque: opaque, hint: hint);

Future<ObjectArray1> loopBackArrayTwinRustAsync(
        {required Object opaque, dynamic hint}) =>
    RustLib.instance.api.loopBackArrayTwinRustAsync(opaque: opaque, hint: hint);

Future<List<Object>> loopBackVecTwinRustAsync(
        {required Object opaque, dynamic hint}) =>
    RustLib.instance.api.loopBackVecTwinRustAsync(opaque: opaque, hint: hint);

Future<void> loopBackOptionGetTwinRustAsync({Object? opaque, dynamic hint}) =>
    RustLib.instance.api
        .loopBackOptionGetTwinRustAsync(opaque: opaque, hint: hint);

Future<void> loopBackArrayGetTwinRustAsync(
        {required ObjectArray1 opaque, dynamic hint}) =>
    RustLib.instance.api
        .loopBackArrayGetTwinRustAsync(opaque: opaque, hint: hint);

Future<void> loopBackVecGetTwinRustAsync(
        {required List<Object> opaque, dynamic hint}) =>
    RustLib.instance.api
        .loopBackVecGetTwinRustAsync(opaque: opaque, hint: hint);

/// [DartWrapObject] cannot be obtained
/// on a thread other than the thread it was created on.
Future<void> panicUnwrapDartOpaqueTwinRustAsync(
        {required Object opaque, dynamic hint}) =>
    RustLib.instance.api
        .panicUnwrapDartOpaqueTwinRustAsync(opaque: opaque, hint: hint);

Future<DartOpaqueNestedTwinRustAsync> createNestedDartOpaqueTwinRustAsync(
        {required Object opaque1, required Object opaque2, dynamic hint}) =>
    RustLib.instance.api.createNestedDartOpaqueTwinRustAsync(
        opaque1: opaque1, opaque2: opaque2, hint: hint);

Future<void> getNestedDartOpaqueTwinRustAsync(
        {required DartOpaqueNestedTwinRustAsync opaque, dynamic hint}) =>
    RustLib.instance.api
        .getNestedDartOpaqueTwinRustAsync(opaque: opaque, hint: hint);

Future<EnumDartOpaqueTwinRustAsync> createEnumDartOpaqueTwinRustAsync(
        {required Object opaque, dynamic hint}) =>
    RustLib.instance.api
        .createEnumDartOpaqueTwinRustAsync(opaque: opaque, hint: hint);

Future<void> getEnumDartOpaqueTwinRustAsync(
        {required EnumDartOpaqueTwinRustAsync opaque, dynamic hint}) =>
    RustLib.instance.api
        .getEnumDartOpaqueTwinRustAsync(opaque: opaque, hint: hint);

Future<void> setStaticDartOpaqueTwinRustAsync(
        {required int id, required Object opaque, dynamic hint}) =>
    RustLib.instance.api
        .setStaticDartOpaqueTwinRustAsync(id: id, opaque: opaque, hint: hint);

Future<void> dropStaticDartOpaqueTwinRustAsync(
        {required int id, dynamic hint}) =>
    RustLib.instance.api.dropStaticDartOpaqueTwinRustAsync(id: id, hint: hint);

Future<List<Object>> cloneDartOpaqueTwinRustAsync(
        {required Object opaque, dynamic hint}) =>
    RustLib.instance.api
        .cloneDartOpaqueTwinRustAsync(opaque: opaque, hint: hint);

class DartOpaqueNestedTwinRustAsync {
  final Object first;
  final Object second;

  const DartOpaqueNestedTwinRustAsync({
    required this.first,
    required this.second,
  });

  @override
  int get hashCode => first.hashCode ^ second.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DartOpaqueNestedTwinRustAsync &&
          runtimeType == other.runtimeType &&
          first == other.first &&
          second == other.second;
}

@freezed
sealed class EnumDartOpaqueTwinRustAsync with _$EnumDartOpaqueTwinRustAsync {
  const factory EnumDartOpaqueTwinRustAsync.primitive(
    int field0,
  ) = EnumDartOpaqueTwinRustAsync_Primitive;
  const factory EnumDartOpaqueTwinRustAsync.opaque(
    Object field0,
  ) = EnumDartOpaqueTwinRustAsync_Opaque;
}