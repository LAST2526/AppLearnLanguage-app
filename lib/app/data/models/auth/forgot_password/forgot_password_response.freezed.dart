// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForgotPasswordResponse _$ForgotPasswordResponseFromJson(
    Map<String, dynamic> json) {
  return _ForgotPasswordResponse.fromJson(json);
}

/// @nodoc
mixin _$ForgotPasswordResponse {
  bool get isSuccess => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  SentData get data => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotPasswordResponseCopyWith<ForgotPasswordResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordResponseCopyWith<$Res> {
  factory $ForgotPasswordResponseCopyWith(ForgotPasswordResponse value,
          $Res Function(ForgotPasswordResponse) then) =
      _$ForgotPasswordResponseCopyWithImpl<$Res, ForgotPasswordResponse>;
  @useResult
  $Res call({bool isSuccess, String message, SentData data, int statusCode});

  $SentDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ForgotPasswordResponseCopyWithImpl<$Res,
        $Val extends ForgotPasswordResponse>
    implements $ForgotPasswordResponseCopyWith<$Res> {
  _$ForgotPasswordResponseCopyWithImpl(this._value, this._then);

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
              as SentData,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SentDataCopyWith<$Res> get data {
    return $SentDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForgotPasswordResponseImplCopyWith<$Res>
    implements $ForgotPasswordResponseCopyWith<$Res> {
  factory _$$ForgotPasswordResponseImplCopyWith(
          _$ForgotPasswordResponseImpl value,
          $Res Function(_$ForgotPasswordResponseImpl) then) =
      __$$ForgotPasswordResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSuccess, String message, SentData data, int statusCode});

  @override
  $SentDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ForgotPasswordResponseImplCopyWithImpl<$Res>
    extends _$ForgotPasswordResponseCopyWithImpl<$Res,
        _$ForgotPasswordResponseImpl>
    implements _$$ForgotPasswordResponseImplCopyWith<$Res> {
  __$$ForgotPasswordResponseImplCopyWithImpl(
      _$ForgotPasswordResponseImpl _value,
      $Res Function(_$ForgotPasswordResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? message = null,
    Object? data = null,
    Object? statusCode = null,
  }) {
    return _then(_$ForgotPasswordResponseImpl(
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
              as SentData,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgotPasswordResponseImpl implements _ForgotPasswordResponse {
  const _$ForgotPasswordResponseImpl(
      {required this.isSuccess,
      required this.message,
      required this.data,
      required this.statusCode});

  factory _$ForgotPasswordResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgotPasswordResponseImplFromJson(json);

  @override
  final bool isSuccess;
  @override
  final String message;
  @override
  final SentData data;
  @override
  final int statusCode;

  @override
  String toString() {
    return 'ForgotPasswordResponse(isSuccess: $isSuccess, message: $message, data: $data, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordResponseImpl &&
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
  _$$ForgotPasswordResponseImplCopyWith<_$ForgotPasswordResponseImpl>
      get copyWith => __$$ForgotPasswordResponseImplCopyWithImpl<
          _$ForgotPasswordResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgotPasswordResponseImplToJson(
      this,
    );
  }
}

abstract class _ForgotPasswordResponse implements ForgotPasswordResponse {
  const factory _ForgotPasswordResponse(
      {required final bool isSuccess,
      required final String message,
      required final SentData data,
      required final int statusCode}) = _$ForgotPasswordResponseImpl;

  factory _ForgotPasswordResponse.fromJson(Map<String, dynamic> json) =
      _$ForgotPasswordResponseImpl.fromJson;

  @override
  bool get isSuccess;
  @override
  String get message;
  @override
  SentData get data;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$ForgotPasswordResponseImplCopyWith<_$ForgotPasswordResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SentData _$SentDataFromJson(Map<String, dynamic> json) {
  return _SentData.fromJson(json);
}

/// @nodoc
mixin _$SentData {
  bool get isSent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SentDataCopyWith<SentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentDataCopyWith<$Res> {
  factory $SentDataCopyWith(SentData value, $Res Function(SentData) then) =
      _$SentDataCopyWithImpl<$Res, SentData>;
  @useResult
  $Res call({bool isSent});
}

/// @nodoc
class _$SentDataCopyWithImpl<$Res, $Val extends SentData>
    implements $SentDataCopyWith<$Res> {
  _$SentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSent = null,
  }) {
    return _then(_value.copyWith(
      isSent: null == isSent
          ? _value.isSent
          : isSent // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SentDataImplCopyWith<$Res>
    implements $SentDataCopyWith<$Res> {
  factory _$$SentDataImplCopyWith(
          _$SentDataImpl value, $Res Function(_$SentDataImpl) then) =
      __$$SentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSent});
}

/// @nodoc
class __$$SentDataImplCopyWithImpl<$Res>
    extends _$SentDataCopyWithImpl<$Res, _$SentDataImpl>
    implements _$$SentDataImplCopyWith<$Res> {
  __$$SentDataImplCopyWithImpl(
      _$SentDataImpl _value, $Res Function(_$SentDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSent = null,
  }) {
    return _then(_$SentDataImpl(
      isSent: null == isSent
          ? _value.isSent
          : isSent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SentDataImpl implements _SentData {
  const _$SentDataImpl({required this.isSent});

  factory _$SentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SentDataImplFromJson(json);

  @override
  final bool isSent;

  @override
  String toString() {
    return 'SentData(isSent: $isSent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentDataImpl &&
            (identical(other.isSent, isSent) || other.isSent == isSent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isSent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SentDataImplCopyWith<_$SentDataImpl> get copyWith =>
      __$$SentDataImplCopyWithImpl<_$SentDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SentDataImplToJson(
      this,
    );
  }
}

abstract class _SentData implements SentData {
  const factory _SentData({required final bool isSent}) = _$SentDataImpl;

  factory _SentData.fromJson(Map<String, dynamic> json) =
      _$SentDataImpl.fromJson;

  @override
  bool get isSent;
  @override
  @JsonKey(ignore: true)
  _$$SentDataImplCopyWith<_$SentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
