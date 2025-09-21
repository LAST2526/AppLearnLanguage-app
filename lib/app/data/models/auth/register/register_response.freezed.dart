// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) {
  return _RegisterResponse.fromJson(json);
}

/// @nodoc
mixin _$RegisterResponse {
  bool get isSuccess => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  RegisterData? get data => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterResponseCopyWith<RegisterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterResponseCopyWith<$Res> {
  factory $RegisterResponseCopyWith(
          RegisterResponse value, $Res Function(RegisterResponse) then) =
      _$RegisterResponseCopyWithImpl<$Res, RegisterResponse>;
  @useResult
  $Res call(
      {bool isSuccess, String message, RegisterData? data, int statusCode});

  $RegisterDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$RegisterResponseCopyWithImpl<$Res, $Val extends RegisterResponse>
    implements $RegisterResponseCopyWith<$Res> {
  _$RegisterResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? message = null,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RegisterData?,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $RegisterDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterResponseImplCopyWith<$Res>
    implements $RegisterResponseCopyWith<$Res> {
  factory _$$RegisterResponseImplCopyWith(_$RegisterResponseImpl value,
          $Res Function(_$RegisterResponseImpl) then) =
      __$$RegisterResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSuccess, String message, RegisterData? data, int statusCode});

  @override
  $RegisterDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$RegisterResponseImplCopyWithImpl<$Res>
    extends _$RegisterResponseCopyWithImpl<$Res, _$RegisterResponseImpl>
    implements _$$RegisterResponseImplCopyWith<$Res> {
  __$$RegisterResponseImplCopyWithImpl(_$RegisterResponseImpl _value,
      $Res Function(_$RegisterResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? message = null,
    Object? data = freezed,
    Object? statusCode = null,
  }) {
    return _then(_$RegisterResponseImpl(
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RegisterData?,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterResponseImpl implements _RegisterResponse {
  const _$RegisterResponseImpl(
      {required this.isSuccess,
      required this.message,
      this.data,
      required this.statusCode});

  factory _$RegisterResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterResponseImplFromJson(json);

  @override
  final bool isSuccess;
  @override
  final String message;
  @override
  final RegisterData? data;
  @override
  final int statusCode;

  @override
  String toString() {
    return 'RegisterResponse(isSuccess: $isSuccess, message: $message, data: $data, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterResponseImpl &&
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
  _$$RegisterResponseImplCopyWith<_$RegisterResponseImpl> get copyWith =>
      __$$RegisterResponseImplCopyWithImpl<_$RegisterResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterResponseImplToJson(
      this,
    );
  }
}

abstract class _RegisterResponse implements RegisterResponse {
  const factory _RegisterResponse(
      {required final bool isSuccess,
      required final String message,
      final RegisterData? data,
      required final int statusCode}) = _$RegisterResponseImpl;

  factory _RegisterResponse.fromJson(Map<String, dynamic> json) =
      _$RegisterResponseImpl.fromJson;

  @override
  bool get isSuccess;
  @override
  String get message;
  @override
  RegisterData? get data;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$RegisterResponseImplCopyWith<_$RegisterResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegisterData _$RegisterDataFromJson(Map<String, dynamic> json) {
  return _RegisterData.fromJson(json);
}

/// @nodoc
mixin _$RegisterData {
  int get id => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  bool get isExist => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterDataCopyWith<RegisterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterDataCopyWith<$Res> {
  factory $RegisterDataCopyWith(
          RegisterData value, $Res Function(RegisterData) then) =
      _$RegisterDataCopyWithImpl<$Res, RegisterData>;
  @useResult
  $Res call(
      {int id,
      String userName,
      bool isExist,
      bool isActive,
      String accessToken,
      String refreshToken});
}

/// @nodoc
class _$RegisterDataCopyWithImpl<$Res, $Val extends RegisterData>
    implements $RegisterDataCopyWith<$Res> {
  _$RegisterDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? isExist = null,
    Object? isActive = null,
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      isExist: null == isExist
          ? _value.isExist
          : isExist // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterDataImplCopyWith<$Res>
    implements $RegisterDataCopyWith<$Res> {
  factory _$$RegisterDataImplCopyWith(
          _$RegisterDataImpl value, $Res Function(_$RegisterDataImpl) then) =
      __$$RegisterDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String userName,
      bool isExist,
      bool isActive,
      String accessToken,
      String refreshToken});
}

/// @nodoc
class __$$RegisterDataImplCopyWithImpl<$Res>
    extends _$RegisterDataCopyWithImpl<$Res, _$RegisterDataImpl>
    implements _$$RegisterDataImplCopyWith<$Res> {
  __$$RegisterDataImplCopyWithImpl(
      _$RegisterDataImpl _value, $Res Function(_$RegisterDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? isExist = null,
    Object? isActive = null,
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$RegisterDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      isExist: null == isExist
          ? _value.isExist
          : isExist // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterDataImpl implements _RegisterData {
  const _$RegisterDataImpl(
      {required this.id,
      required this.userName,
      required this.isExist,
      required this.isActive,
      required this.accessToken,
      required this.refreshToken});

  factory _$RegisterDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterDataImplFromJson(json);

  @override
  final int id;
  @override
  final String userName;
  @override
  final bool isExist;
  @override
  final bool isActive;
  @override
  final String accessToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'RegisterData(id: $id, userName: $userName, isExist: $isExist, isActive: $isActive, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.isExist, isExist) || other.isExist == isExist) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userName, isExist, isActive, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterDataImplCopyWith<_$RegisterDataImpl> get copyWith =>
      __$$RegisterDataImplCopyWithImpl<_$RegisterDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterDataImplToJson(
      this,
    );
  }
}

abstract class _RegisterData implements RegisterData {
  const factory _RegisterData(
      {required final int id,
      required final String userName,
      required final bool isExist,
      required final bool isActive,
      required final String accessToken,
      required final String refreshToken}) = _$RegisterDataImpl;

  factory _RegisterData.fromJson(Map<String, dynamic> json) =
      _$RegisterDataImpl.fromJson;

  @override
  int get id;
  @override
  String get userName;
  @override
  bool get isExist;
  @override
  bool get isActive;
  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$RegisterDataImplCopyWith<_$RegisterDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MemberData _$MemberDataFromJson(Map<String, dynamic> json) {
  return _MemberData.fromJson(json);
}

/// @nodoc
mixin _$MemberData {
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberDataCopyWith<MemberData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberDataCopyWith<$Res> {
  factory $MemberDataCopyWith(
          MemberData value, $Res Function(MemberData) then) =
      _$MemberDataCopyWithImpl<$Res, MemberData>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$MemberDataCopyWithImpl<$Res, $Val extends MemberData>
    implements $MemberDataCopyWith<$Res> {
  _$MemberDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberDataImplCopyWith<$Res>
    implements $MemberDataCopyWith<$Res> {
  factory _$$MemberDataImplCopyWith(
          _$MemberDataImpl value, $Res Function(_$MemberDataImpl) then) =
      __$$MemberDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$MemberDataImplCopyWithImpl<$Res>
    extends _$MemberDataCopyWithImpl<$Res, _$MemberDataImpl>
    implements _$$MemberDataImplCopyWith<$Res> {
  __$$MemberDataImplCopyWithImpl(
      _$MemberDataImpl _value, $Res Function(_$MemberDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$MemberDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberDataImpl implements _MemberData {
  const _$MemberDataImpl({required this.id});

  factory _$MemberDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberDataImplFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'MemberData(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberDataImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberDataImplCopyWith<_$MemberDataImpl> get copyWith =>
      __$$MemberDataImplCopyWithImpl<_$MemberDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberDataImplToJson(
      this,
    );
  }
}

abstract class _MemberData implements MemberData {
  const factory _MemberData({required final int id}) = _$MemberDataImpl;

  factory _MemberData.fromJson(Map<String, dynamic> json) =
      _$MemberDataImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$MemberDataImplCopyWith<_$MemberDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
