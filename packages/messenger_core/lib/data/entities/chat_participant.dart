// flutter
import 'package:flutter/foundation.dart';

// packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_participant.freezed.dart';
part 'chat_participant.g.dart';

@freezed
class ChatParticipant with _$ChatParticipant {
  const factory ChatParticipant({
    required String id,
    required String chatId,
    required String userId,
    @Default(false) bool isNotificationMuted,
    @Default(false) bool isPinned,
  }) = _ChatParticipant;

  factory ChatParticipant.fromJson(Map<String, Object?> json) =>
      _$ChatParticipantFromJson(json);
}
