// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_visiblity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageVisiblity _$MessageVisiblityFromJson(Map<String, dynamic> json) {
  return _MessageVisiblity.fromJson(json);
}

/// @nodoc
mixin _$MessageVisiblity {
  String get id => throw _privateConstructorUsedError;
  String get chatId => throw _privateConstructorUsedError;
  String get messageId => throw _privateConstructorUsedError;
  bool get isVisible => throw _privateConstructorUsedError;
  bool get isDeletedLocally => throw _privateConstructorUsedError;
  bool get isDeletedGlobally => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageVisiblityCopyWith<MessageVisiblity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageVisiblityCopyWith<$Res> {
  factory $MessageVisiblityCopyWith(
          MessageVisiblity value, $Res Function(MessageVisiblity) then) =
      _$MessageVisiblityCopyWithImpl<$Res, MessageVisiblity>;
  @useResult
  $Res call(
      {String id,
      String chatId,
      String messageId,
      bool isVisible,
      bool isDeletedLocally,
      bool isDeletedGlobally});
}

/// @nodoc
class _$MessageVisiblityCopyWithImpl<$Res, $Val extends MessageVisiblity>
    implements $MessageVisiblityCopyWith<$Res> {
  _$MessageVisiblityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chatId = null,
    Object? messageId = null,
    Object? isVisible = null,
    Object? isDeletedLocally = null,
    Object? isDeletedGlobally = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeletedLocally: null == isDeletedLocally
          ? _value.isDeletedLocally
          : isDeletedLocally // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeletedGlobally: null == isDeletedGlobally
          ? _value.isDeletedGlobally
          : isDeletedGlobally // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageVisiblityImplCopyWith<$Res>
    implements $MessageVisiblityCopyWith<$Res> {
  factory _$$MessageVisiblityImplCopyWith(_$MessageVisiblityImpl value,
          $Res Function(_$MessageVisiblityImpl) then) =
      __$$MessageVisiblityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String chatId,
      String messageId,
      bool isVisible,
      bool isDeletedLocally,
      bool isDeletedGlobally});
}

/// @nodoc
class __$$MessageVisiblityImplCopyWithImpl<$Res>
    extends _$MessageVisiblityCopyWithImpl<$Res, _$MessageVisiblityImpl>
    implements _$$MessageVisiblityImplCopyWith<$Res> {
  __$$MessageVisiblityImplCopyWithImpl(_$MessageVisiblityImpl _value,
      $Res Function(_$MessageVisiblityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chatId = null,
    Object? messageId = null,
    Object? isVisible = null,
    Object? isDeletedLocally = null,
    Object? isDeletedGlobally = null,
  }) {
    return _then(_$MessageVisiblityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeletedLocally: null == isDeletedLocally
          ? _value.isDeletedLocally
          : isDeletedLocally // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeletedGlobally: null == isDeletedGlobally
          ? _value.isDeletedGlobally
          : isDeletedGlobally // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageVisiblityImpl
    with DiagnosticableTreeMixin
    implements _MessageVisiblity {
  const _$MessageVisiblityImpl(
      {required this.id,
      required this.chatId,
      required this.messageId,
      this.isVisible = true,
      this.isDeletedLocally = false,
      this.isDeletedGlobally = false});

  factory _$MessageVisiblityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageVisiblityImplFromJson(json);

  @override
  final String id;
  @override
  final String chatId;
  @override
  final String messageId;
  @override
  @JsonKey()
  final bool isVisible;
  @override
  @JsonKey()
  final bool isDeletedLocally;
  @override
  @JsonKey()
  final bool isDeletedGlobally;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MessageVisiblity(id: $id, chatId: $chatId, messageId: $messageId, isVisible: $isVisible, isDeletedLocally: $isDeletedLocally, isDeletedGlobally: $isDeletedGlobally)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MessageVisiblity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('chatId', chatId))
      ..add(DiagnosticsProperty('messageId', messageId))
      ..add(DiagnosticsProperty('isVisible', isVisible))
      ..add(DiagnosticsProperty('isDeletedLocally', isDeletedLocally))
      ..add(DiagnosticsProperty('isDeletedGlobally', isDeletedGlobally));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageVisiblityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible) &&
            (identical(other.isDeletedLocally, isDeletedLocally) ||
                other.isDeletedLocally == isDeletedLocally) &&
            (identical(other.isDeletedGlobally, isDeletedGlobally) ||
                other.isDeletedGlobally == isDeletedGlobally));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, chatId, messageId, isVisible,
      isDeletedLocally, isDeletedGlobally);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageVisiblityImplCopyWith<_$MessageVisiblityImpl> get copyWith =>
      __$$MessageVisiblityImplCopyWithImpl<_$MessageVisiblityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageVisiblityImplToJson(
      this,
    );
  }
}

abstract class _MessageVisiblity implements MessageVisiblity {
  const factory _MessageVisiblity(
      {required final String id,
      required final String chatId,
      required final String messageId,
      final bool isVisible,
      final bool isDeletedLocally,
      final bool isDeletedGlobally}) = _$MessageVisiblityImpl;

  factory _MessageVisiblity.fromJson(Map<String, dynamic> json) =
      _$MessageVisiblityImpl.fromJson;

  @override
  String get id;
  @override
  String get chatId;
  @override
  String get messageId;
  @override
  bool get isVisible;
  @override
  bool get isDeletedLocally;
  @override
  bool get isDeletedGlobally;
  @override
  @JsonKey(ignore: true)
  _$$MessageVisiblityImplCopyWith<_$MessageVisiblityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
