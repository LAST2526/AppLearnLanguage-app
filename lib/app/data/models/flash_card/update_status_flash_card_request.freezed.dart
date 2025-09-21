// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_status_flash_card_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateStatusFlashCardRequest _$UpdateStatusFlashCardRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateStatusFlashCardRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateStatusFlashCardRequest {
  int get flashcardId => throw _privateConstructorUsedError;
  int get action => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateStatusFlashCardRequestCopyWith<UpdateStatusFlashCardRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStatusFlashCardRequestCopyWith<$Res> {
  factory $UpdateStatusFlashCardRequestCopyWith(
          UpdateStatusFlashCardRequest value,
          $Res Function(UpdateStatusFlashCardRequest) then) =
      _$UpdateStatusFlashCardRequestCopyWithImpl<$Res,
          UpdateStatusFlashCardRequest>;
  @useResult
  $Res call({int flashcardId, int action});
}

/// @nodoc
class _$UpdateStatusFlashCardRequestCopyWithImpl<$Res,
        $Val extends UpdateStatusFlashCardRequest>
    implements $UpdateStatusFlashCardRequestCopyWith<$Res> {
  _$UpdateStatusFlashCardRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flashcardId = null,
    Object? action = null,
  }) {
    return _then(_value.copyWith(
      flashcardId: null == flashcardId
          ? _value.flashcardId
          : flashcardId // ignore: cast_nullable_to_non_nullable
              as int,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateStatusFlashCardRequestImplCopyWith<$Res>
    implements $UpdateStatusFlashCardRequestCopyWith<$Res> {
  factory _$$UpdateStatusFlashCardRequestImplCopyWith(
          _$UpdateStatusFlashCardRequestImpl value,
          $Res Function(_$UpdateStatusFlashCardRequestImpl) then) =
      __$$UpdateStatusFlashCardRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int flashcardId, int action});
}

/// @nodoc
class __$$UpdateStatusFlashCardRequestImplCopyWithImpl<$Res>
    extends _$UpdateStatusFlashCardRequestCopyWithImpl<$Res,
        _$UpdateStatusFlashCardRequestImpl>
    implements _$$UpdateStatusFlashCardRequestImplCopyWith<$Res> {
  __$$UpdateStatusFlashCardRequestImplCopyWithImpl(
      _$UpdateStatusFlashCardRequestImpl _value,
      $Res Function(_$UpdateStatusFlashCardRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flashcardId = null,
    Object? action = null,
  }) {
    return _then(_$UpdateStatusFlashCardRequestImpl(
      flashcardId: null == flashcardId
          ? _value.flashcardId
          : flashcardId // ignore: cast_nullable_to_non_nullable
              as int,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateStatusFlashCardRequestImpl
    implements _UpdateStatusFlashCardRequest {
  const _$UpdateStatusFlashCardRequestImpl(
      {required this.flashcardId, required this.action});

  factory _$UpdateStatusFlashCardRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateStatusFlashCardRequestImplFromJson(json);

  @override
  final int flashcardId;
  @override
  final int action;

  @override
  String toString() {
    return 'UpdateStatusFlashCardRequest(flashcardId: $flashcardId, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStatusFlashCardRequestImpl &&
            (identical(other.flashcardId, flashcardId) ||
                other.flashcardId == flashcardId) &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, flashcardId, action);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStatusFlashCardRequestImplCopyWith<
          _$UpdateStatusFlashCardRequestImpl>
      get copyWith => __$$UpdateStatusFlashCardRequestImplCopyWithImpl<
          _$UpdateStatusFlashCardRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateStatusFlashCardRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateStatusFlashCardRequest
    implements UpdateStatusFlashCardRequest {
  const factory _UpdateStatusFlashCardRequest(
      {required final int flashcardId,
      required final int action}) = _$UpdateStatusFlashCardRequestImpl;

  factory _UpdateStatusFlashCardRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateStatusFlashCardRequestImpl.fromJson;

  @override
  int get flashcardId;
  @override
  int get action;
  @override
  @JsonKey(ignore: true)
  _$$UpdateStatusFlashCardRequestImplCopyWith<
          _$UpdateStatusFlashCardRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
