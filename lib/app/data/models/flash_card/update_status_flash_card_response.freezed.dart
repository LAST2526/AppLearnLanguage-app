// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_status_flash_card_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateStatusFlashCardResponse _$UpdateStatusFlashCardResponseFromJson(
    Map<String, dynamic> json) {
  return _UpdateStatusFlashCardResponse.fromJson(json);
}

/// @nodoc
mixin _$UpdateStatusFlashCardResponse {
  bool get isSuccess => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  UpdatedData get data => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateStatusFlashCardResponseCopyWith<UpdateStatusFlashCardResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStatusFlashCardResponseCopyWith<$Res> {
  factory $UpdateStatusFlashCardResponseCopyWith(
          UpdateStatusFlashCardResponse value,
          $Res Function(UpdateStatusFlashCardResponse) then) =
      _$UpdateStatusFlashCardResponseCopyWithImpl<$Res,
          UpdateStatusFlashCardResponse>;
  @useResult
  $Res call({bool isSuccess, String message, UpdatedData data, int statusCode});

  $UpdatedDataCopyWith<$Res> get data;
}

/// @nodoc
class _$UpdateStatusFlashCardResponseCopyWithImpl<$Res,
        $Val extends UpdateStatusFlashCardResponse>
    implements $UpdateStatusFlashCardResponseCopyWith<$Res> {
  _$UpdateStatusFlashCardResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? message = null,
    Object? data = null,
    Object? statusCode = null,
  }) {
    return _then(_value.copyWith(
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UpdatedData,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdatedDataCopyWith<$Res> get data {
    return $UpdatedDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateStatusFlashCardResponseImplCopyWith<$Res>
    implements $UpdateStatusFlashCardResponseCopyWith<$Res> {
  factory _$$UpdateStatusFlashCardResponseImplCopyWith(
          _$UpdateStatusFlashCardResponseImpl value,
          $Res Function(_$UpdateStatusFlashCardResponseImpl) then) =
      __$$UpdateStatusFlashCardResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSuccess, String message, UpdatedData data, int statusCode});

  @override
  $UpdatedDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$UpdateStatusFlashCardResponseImplCopyWithImpl<$Res>
    extends _$UpdateStatusFlashCardResponseCopyWithImpl<$Res,
        _$UpdateStatusFlashCardResponseImpl>
    implements _$$UpdateStatusFlashCardResponseImplCopyWith<$Res> {
  __$$UpdateStatusFlashCardResponseImplCopyWithImpl(
      _$UpdateStatusFlashCardResponseImpl _value,
      $Res Function(_$UpdateStatusFlashCardResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? message = null,
    Object? data = null,
    Object? statusCode = null,
  }) {
    return _then(_$UpdateStatusFlashCardResponseImpl(
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UpdatedData,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateStatusFlashCardResponseImpl
    implements _UpdateStatusFlashCardResponse {
  const _$UpdateStatusFlashCardResponseImpl(
      {required this.isSuccess,
      required this.message,
      required this.data,
      required this.statusCode});

  factory _$UpdateStatusFlashCardResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateStatusFlashCardResponseImplFromJson(json);

  @override
  final bool isSuccess;
  @override
  final String message;
  @override
  final UpdatedData data;
  @override
  final int statusCode;

  @override
  String toString() {
    return 'UpdateStatusFlashCardResponse(isSuccess: $isSuccess, message: $message, data: $data, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStatusFlashCardResponseImpl &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isSuccess, message, data, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStatusFlashCardResponseImplCopyWith<
          _$UpdateStatusFlashCardResponseImpl>
      get copyWith => __$$UpdateStatusFlashCardResponseImplCopyWithImpl<
          _$UpdateStatusFlashCardResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateStatusFlashCardResponseImplToJson(
      this,
    );
  }
}

abstract class _UpdateStatusFlashCardResponse
    implements UpdateStatusFlashCardResponse {
  const factory _UpdateStatusFlashCardResponse(
      {required final bool isSuccess,
      required final String message,
      required final UpdatedData data,
      required final int statusCode}) = _$UpdateStatusFlashCardResponseImpl;

  factory _UpdateStatusFlashCardResponse.fromJson(Map<String, dynamic> json) =
      _$UpdateStatusFlashCardResponseImpl.fromJson;

  @override
  bool get isSuccess;
  @override
  String get message;
  @override
  UpdatedData get data;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$UpdateStatusFlashCardResponseImplCopyWith<
          _$UpdateStatusFlashCardResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdatedData _$UpdatedDataFromJson(Map<String, dynamic> json) {
  return _UpdatedData.fromJson(json);
}

/// @nodoc
mixin _$UpdatedData {
  int get id => throw _privateConstructorUsedError;
  int get memberId => throw _privateConstructorUsedError;
  int get flashcardId => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  DateTime get lastReviewedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatedDataCopyWith<UpdatedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatedDataCopyWith<$Res> {
  factory $UpdatedDataCopyWith(
          UpdatedData value, $Res Function(UpdatedData) then) =
      _$UpdatedDataCopyWithImpl<$Res, UpdatedData>;
  @useResult
  $Res call(
      {int id,
      int memberId,
      int flashcardId,
      int status,
      DateTime lastReviewedAt});
}

/// @nodoc
class _$UpdatedDataCopyWithImpl<$Res, $Val extends UpdatedData>
    implements $UpdatedDataCopyWith<$Res> {
  _$UpdatedDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memberId = null,
    Object? flashcardId = null,
    Object? status = null,
    Object? lastReviewedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      flashcardId: null == flashcardId
          ? _value.flashcardId
          : flashcardId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      lastReviewedAt: null == lastReviewedAt
          ? _value.lastReviewedAt
          : lastReviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatedDataImplCopyWith<$Res>
    implements $UpdatedDataCopyWith<$Res> {
  factory _$$UpdatedDataImplCopyWith(
          _$UpdatedDataImpl value, $Res Function(_$UpdatedDataImpl) then) =
      __$$UpdatedDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int memberId,
      int flashcardId,
      int status,
      DateTime lastReviewedAt});
}

/// @nodoc
class __$$UpdatedDataImplCopyWithImpl<$Res>
    extends _$UpdatedDataCopyWithImpl<$Res, _$UpdatedDataImpl>
    implements _$$UpdatedDataImplCopyWith<$Res> {
  __$$UpdatedDataImplCopyWithImpl(
      _$UpdatedDataImpl _value, $Res Function(_$UpdatedDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memberId = null,
    Object? flashcardId = null,
    Object? status = null,
    Object? lastReviewedAt = null,
  }) {
    return _then(_$UpdatedDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      flashcardId: null == flashcardId
          ? _value.flashcardId
          : flashcardId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      lastReviewedAt: null == lastReviewedAt
          ? _value.lastReviewedAt
          : lastReviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdatedDataImpl implements _UpdatedData {
  const _$UpdatedDataImpl(
      {required this.id,
      required this.memberId,
      required this.flashcardId,
      required this.status,
      required this.lastReviewedAt});

  factory _$UpdatedDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatedDataImplFromJson(json);

  @override
  final int id;
  @override
  final int memberId;
  @override
  final int flashcardId;
  @override
  final int status;
  @override
  final DateTime lastReviewedAt;

  @override
  String toString() {
    return 'UpdatedData(id: $id, memberId: $memberId, flashcardId: $flashcardId, status: $status, lastReviewedAt: $lastReviewedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.flashcardId, flashcardId) ||
                other.flashcardId == flashcardId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.lastReviewedAt, lastReviewedAt) ||
                other.lastReviewedAt == lastReviewedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, memberId, flashcardId, status, lastReviewedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedDataImplCopyWith<_$UpdatedDataImpl> get copyWith =>
      __$$UpdatedDataImplCopyWithImpl<_$UpdatedDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatedDataImplToJson(
      this,
    );
  }
}

abstract class _UpdatedData implements UpdatedData {
  const factory _UpdatedData(
      {required final int id,
      required final int memberId,
      required final int flashcardId,
      required final int status,
      required final DateTime lastReviewedAt}) = _$UpdatedDataImpl;

  factory _UpdatedData.fromJson(Map<String, dynamic> json) =
      _$UpdatedDataImpl.fromJson;

  @override
  int get id;
  @override
  int get memberId;
  @override
  int get flashcardId;
  @override
  int get status;
  @override
  DateTime get lastReviewedAt;
  @override
  @JsonKey(ignore: true)
  _$$UpdatedDataImplCopyWith<_$UpdatedDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
