// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_email_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginEmailResponse _$LoginEmailResponseFromJson(Map<String, dynamic> json) {
  return _LoginEmailResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginEmailResponse {
  bool get isSuccess => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  LoginEmailData get data => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginEmailResponseCopyWith<LoginEmailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEmailResponseCopyWith<$Res> {
  factory $LoginEmailResponseCopyWith(
          LoginEmailResponse value, $Res Function(LoginEmailResponse) then) =
      _$LoginEmailResponseCopyWithImpl<$Res, LoginEmailResponse>;
  @useResult
  $Res call(
      {bool isSuccess, String message, LoginEmailData data, int statusCode});

  $LoginEmailDataCopyWith<$Res> get data;
}

/// @nodoc
class _$LoginEmailResponseCopyWithImpl<$Res, $Val extends LoginEmailResponse>
    implements $LoginEmailResponseCopyWith<$Res> {
  _$LoginEmailResponseCopyWithImpl(this._value, this._then);

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
              as LoginEmailData,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginEmailDataCopyWith<$Res> get data {
    return $LoginEmailDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginEmailResponseImplCopyWith<$Res>
    implements $LoginEmailResponseCopyWith<$Res> {
  factory _$$LoginEmailResponseImplCopyWith(_$LoginEmailResponseImpl value,
          $Res Function(_$LoginEmailResponseImpl) then) =
      __$$LoginEmailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSuccess, String message, LoginEmailData data, int statusCode});

  @override
  $LoginEmailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoginEmailResponseImplCopyWithImpl<$Res>
    extends _$LoginEmailResponseCopyWithImpl<$Res, _$LoginEmailResponseImpl>
    implements _$$LoginEmailResponseImplCopyWith<$Res> {
  __$$LoginEmailResponseImplCopyWithImpl(_$LoginEmailResponseImpl _value,
      $Res Function(_$LoginEmailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? message = null,
    Object? data = null,
    Object? statusCode = null,
  }) {
    return _then(_$LoginEmailResponseImpl(
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
              as LoginEmailData,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginEmailResponseImpl implements _LoginEmailResponse {
  const _$LoginEmailResponseImpl(
      {required this.isSuccess,
      required this.message,
      required this.data,
      required this.statusCode});

  factory _$LoginEmailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginEmailResponseImplFromJson(json);

  @override
  final bool isSuccess;
  @override
  final String message;
  @override
  final LoginEmailData data;
  @override
  final int statusCode;

  @override
  String toString() {
    return 'LoginEmailResponse(isSuccess: $isSuccess, message: $message, data: $data, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEmailResponseImpl &&
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
  _$$LoginEmailResponseImplCopyWith<_$LoginEmailResponseImpl> get copyWith =>
      __$$LoginEmailResponseImplCopyWithImpl<_$LoginEmailResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginEmailResponseImplToJson(
      this,
    );
  }
}

abstract class _LoginEmailResponse implements LoginEmailResponse {
  const factory _LoginEmailResponse(
      {required final bool isSuccess,
      required final String message,
      required final LoginEmailData data,
      required final int statusCode}) = _$LoginEmailResponseImpl;

  factory _LoginEmailResponse.fromJson(Map<String, dynamic> json) =
      _$LoginEmailResponseImpl.fromJson;

  @override
  bool get isSuccess;
  @override
  String get message;
  @override
  LoginEmailData get data;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$LoginEmailResponseImplCopyWith<_$LoginEmailResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginEmailData _$LoginEmailDataFromJson(Map<String, dynamic> json) {
  return _LoginEmailData.fromJson(json);
}

/// @nodoc
mixin _$LoginEmailData {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get mail => throw _privateConstructorUsedError;
  bool get isExist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginEmailDataCopyWith<LoginEmailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEmailDataCopyWith<$Res> {
  factory $LoginEmailDataCopyWith(
          LoginEmailData value, $Res Function(LoginEmailData) then) =
      _$LoginEmailDataCopyWithImpl<$Res, LoginEmailData>;
  @useResult
  $Res call(
      {String accessToken,
      String refreshToken,
      String userName,
      String mail,
      bool isExist});
}

/// @nodoc
class _$LoginEmailDataCopyWithImpl<$Res, $Val extends LoginEmailData>
    implements $LoginEmailDataCopyWith<$Res> {
  _$LoginEmailDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? userName = null,
    Object? mail = null,
    Object? isExist = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      mail: null == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String,
      isExist: null == isExist
          ? _value.isExist
          : isExist // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginEmailDataImplCopyWith<$Res>
    implements $LoginEmailDataCopyWith<$Res> {
  factory _$$LoginEmailDataImplCopyWith(_$LoginEmailDataImpl value,
          $Res Function(_$LoginEmailDataImpl) then) =
      __$$LoginEmailDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accessToken,
      String refreshToken,
      String userName,
      String mail,
      bool isExist});
}

/// @nodoc
class __$$LoginEmailDataImplCopyWithImpl<$Res>
    extends _$LoginEmailDataCopyWithImpl<$Res, _$LoginEmailDataImpl>
    implements _$$LoginEmailDataImplCopyWith<$Res> {
  __$$LoginEmailDataImplCopyWithImpl(
      _$LoginEmailDataImpl _value, $Res Function(_$LoginEmailDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? userName = null,
    Object? mail = null,
    Object? isExist = null,
  }) {
    return _then(_$LoginEmailDataImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      mail: null == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String,
      isExist: null == isExist
          ? _value.isExist
          : isExist // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginEmailDataImpl implements _LoginEmailData {
  const _$LoginEmailDataImpl(
      {required this.accessToken,
      required this.refreshToken,
      required this.userName,
      required this.mail,
      required this.isExist});

  factory _$LoginEmailDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginEmailDataImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final String userName;
  @override
  final String mail;
  @override
  final bool isExist;

  @override
  String toString() {
    return 'LoginEmailData(accessToken: $accessToken, refreshToken: $refreshToken, userName: $userName, mail: $mail, isExist: $isExist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEmailDataImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.mail, mail) || other.mail == mail) &&
            (identical(other.isExist, isExist) || other.isExist == isExist));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, accessToken, refreshToken, userName, mail, isExist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEmailDataImplCopyWith<_$LoginEmailDataImpl> get copyWith =>
      __$$LoginEmailDataImplCopyWithImpl<_$LoginEmailDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginEmailDataImplToJson(
      this,
    );
  }
}

abstract class _LoginEmailData implements LoginEmailData {
  const factory _LoginEmailData(
      {required final String accessToken,
      required final String refreshToken,
      required final String userName,
      required final String mail,
      required final bool isExist}) = _$LoginEmailDataImpl;

  factory _LoginEmailData.fromJson(Map<String, dynamic> json) =
      _$LoginEmailDataImpl.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  String get userName;
  @override
  String get mail;
  @override
  bool get isExist;
  @override
  @JsonKey(ignore: true)
  _$$LoginEmailDataImplCopyWith<_$LoginEmailDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
