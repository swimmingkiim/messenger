// flutter
import 'package:flutter/foundation.dart';

// packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_visiblity.freezed.dart';
part 'message_visiblity.g.dart';

@freezed
class MessageVisiblity with _$MessageVisiblity {
  const factory MessageVisiblity({
    required String id,
    required String chatId,
    required String messageId,
    @Default(true) bool isVisible,
    @Default(false) bool isDeletedLocally,
    @Default(false) bool isDeletedGlobally,
  }) = _MessageVisiblity;

  factory MessageVisiblity.fromJson(Map<String, Object?> json) =>
      _$MessageVisiblityFromJson(json);
}
