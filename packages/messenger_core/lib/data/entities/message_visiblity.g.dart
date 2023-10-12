// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_visiblity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageVisiblityImpl _$$MessageVisiblityImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageVisiblityImpl(
      id: json['id'] as String,
      chatId: json['chatId'] as String,
      messageId: json['messageId'] as String,
      isVisible: json['isVisible'] as bool? ?? true,
      isDeletedLocally: json['isDeletedLocally'] as bool? ?? false,
      isDeletedGlobally: json['isDeletedGlobally'] as bool? ?? false,
    );

Map<String, dynamic> _$$MessageVisiblityImplToJson(
        _$MessageVisiblityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chatId': instance.chatId,
      'messageId': instance.messageId,
      'isVisible': instance.isVisible,
      'isDeletedLocally': instance.isDeletedLocally,
      'isDeletedGlobally': instance.isDeletedGlobally,
    };
