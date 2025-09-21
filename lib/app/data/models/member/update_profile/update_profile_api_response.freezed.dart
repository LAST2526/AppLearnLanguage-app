// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateProfileApiResponse _$UpdateProfileApiResponseFromJson(
    Map<String, dynamic> json) {
  return _UpdateProfileApiResponse.fromJson(json);
}

/// @nodoc
mixin _$UpdateProfileApiResponse {
  bool get isSuccess => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProfileApiResponseCopyWith<UpdateProfileApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileApiResponseCopyWith<$Res> {
  factory $UpdateProfileApiResponseCopyWith(UpdateProfileApiResponse value,
          $Res Function(UpdateProfileApiResponse) then) =
      _$UpdateProfileApiResponseCopyWithImpl<$Res, UpdateProfileApiResponse>;
  @useResult
  $Res call({bool isSuccess, String message, int statusCode});
}

/// @nodoc
class _$UpdateProfileApiResponseCopyWithImpl<$Res,
        $Val extends UpdateProfileApiResponse>
    implements $UpdateProfileApiResponseCopyWith<$Res> {
  _$UpdateProfileApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? message = null,
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
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateProfileApiResponseImplCopyWith<$Res>
    implements $UpdateProfileApiResponseCopyWith<$Res> {
  factory _$$UpdateProfileApiResponseImplCopyWith(
          _$UpdateProfileApiResponseImpl value,
          $Res Function(_$UpdateProfileApiResponseImpl) then) =
      __$$UpdateProfileApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSuccess, String message, int statusCode});
}

/// @nodoc
class __$$UpdateProfileApiResponseImplCopyWithImpl<$Res>
    extends _$UpdateProfileApiResponseCopyWithImpl<$Res,
        _$UpdateProfileApiResponseImpl>
    implements _$$UpdateProfileApiResponseImplCopyWith<$Res> {
  __$$UpdateProfileApiResponseImplCopyWithImpl(
      _$UpdateProfileApiResponseImpl _value,
      $Res Function(_$UpdateProfileApiResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$UpdateProfileApiResponseImpl(
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateProfileApiResponseImpl implements _UpdateProfileApiResponse {
  const _$UpdateProfileApiResponseImpl(
      {required this.isSuccess,
      required this.message,
      required this.statusCode});

  factory _$UpdateProfileApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateProfileApiResponseImplFromJson(json);

  @override
  final bool isSuccess;
  @override
  final String message;
  @override
  final int statusCode;

  @override
  String toString() {
    return 'UpdateProfileApiResponse(isSuccess: $isSuccess, message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileApiResponseImpl &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isSuccess, message, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileApiResponseImplCopyWith<_$UpdateProfileApiResponseImpl>
      get copyWith => __$$UpdateProfileApiResponseImplCopyWithImpl<
          _$UpdateProfileApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateProfileApiResponseImplToJson(
      this,
    );
  }
}

abstract class _UpdateProfileApiResponse implements UpdateProfileApiResponse {
  const factory _UpdateProfileApiResponse(
      {required final bool isSuccess,
      required final String message,
      required final int statusCode}) = _$UpdateProfileApiResponseImpl;

  factory _UpdateProfileApiResponse.fromJson(Map<String, dynamic> json) =
      _$UpdateProfileApiResponseImpl.fromJson;

  @override
  bool get isSuccess;
  @override
  String get message;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$UpdateProfileApiResponseImplCopyWith<_$UpdateProfileApiResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
