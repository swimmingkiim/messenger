// flutter
import 'package:flutter/foundation.dart';

// packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend.freezed.dart';
part 'friend.g.dart';

@freezed
class Friend with _$Friend {
  const factory Friend({
    required String id,
    required String userId,
    required String friendId,
    @Default(false) bool isBlocked,
    @Default(false) bool isReported,
  }) = _Friend;

  factory Friend.fromJson(Map<String, Object?> json) => _$FriendFromJson(json);
}
