// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.30.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// The type `ComplexEnumWithCommentsTwinNormal` is not used by any `pub` functions, thus it is ignored.
// The type `SimpleEnumWithCommentsTwinNormal` is not used by any `pub` functions, thus it is ignored.

/// This is single line comment
Future<void> functionWithCommentsTripleSlashSingleLineTwinNormal(
        {dynamic hint}) =>
    RustLib.instance.api
        .functionWithCommentsTripleSlashSingleLineTwinNormal(hint: hint);

/// This is first line
/// This is second line
Future<void> functionWithCommentsTripleSlashMultiLineTwinNormal(
        {dynamic hint}) =>
    RustLib.instance.api
        .functionWithCommentsTripleSlashMultiLineTwinNormal(hint: hint);

/// Multiline comments are fine,
/// but they are not preferred in Rust nor in Dart.
/// Newlines are preserved.
Future<void> functionWithCommentsSlashStarStarTwinNormal({dynamic hint}) =>
    RustLib.instance.api
        .functionWithCommentsSlashStarStarTwinNormal(hint: hint);

/// Comments on structs
class StructWithCommentsTwinNormal {
  /// Documentation on a struct field
  final int fieldWithComments;

  const StructWithCommentsTwinNormal({
    required this.fieldWithComments,
  });

  /// Documentation on an instance method
  Future<void> instanceMethodTwinNormal({dynamic hint}) =>
      RustLib.instance.api.structWithCommentsTwinNormalInstanceMethodTwinNormal(
          that: this, hint: hint);

  /// Documentation on a static method
  static Future<void> staticMethodTwinNormal({dynamic hint}) =>
      RustLib.instance.api
          .structWithCommentsTwinNormalStaticMethodTwinNormal(hint: hint);

  @override
  int get hashCode => fieldWithComments.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StructWithCommentsTwinNormal &&
          runtimeType == other.runtimeType &&
          fieldWithComments == other.fieldWithComments;
}
