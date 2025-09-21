// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_avatar_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadAvatarResponse _$UploadAvatarResponseFromJson(Map<String, dynamic> json) {
  return _UploadAvatarResponse.fromJson(json);
}

/// @nodoc
mixin _$UploadAvatarResponse {
  bool get isSuccess => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  UrlData get data => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadAvatarResponseCopyWith<UploadAvatarResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadAvatarResponseCopyWith<$Res> {
  factory $UploadAvatarResponseCopyWith(UploadAvatarResponse value,
          $Res Function(UploadAvatarResponse) then) =
      _$UploadAvatarResponseCopyWithImpl<$Res, UploadAvatarResponse>;
  @useResult
  $Res call({bool isSuccess, String message, UrlData data, int statusCode});

  $UrlDataCopyWith<$Res> get data;
}

/// @nodoc
class _$UploadAvatarResponseCopyWithImpl<$Res,
        $Val extends UploadAvatarResponse>
    implements $UploadAvatarResponseCopyWith<$Res> {
  _$UploadAvatarResponseCopyWithImpl(this._value, this._then);

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
              as UrlData,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UrlDataCopyWith<$Res> get data {
    return $UrlDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UploadAvatarResponseImplCopyWith<$Res>
    implements $UploadAvatarResponseCopyWith<$Res> {
  factory _$$UploadAvatarResponseImplCopyWith(_$UploadAvatarResponseImpl value,
          $Res Function(_$UploadAvatarResponseImpl) then) =
      __$$UploadAvatarResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSuccess, String message, UrlData data, int statusCode});

  @override
  $UrlDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$UploadAvatarResponseImplCopyWithImpl<$Res>
    extends _$UploadAvatarResponseCopyWithImpl<$Res, _$UploadAvatarResponseImpl>
    implements _$$UploadAvatarResponseImplCopyWith<$Res> {
  __$$UploadAvatarResponseImplCopyWithImpl(_$UploadAvatarResponseImpl _value,
      $Res Function(_$UploadAvatarResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? message = null,
    Object? data = null,
    Object? statusCode = null,
  }) {
    return _then(_$UploadAvatarResponseImpl(
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
              as UrlData,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadAvatarResponseImpl implements _UploadAvatarResponse {
  const _$UploadAvatarResponseImpl(
      {required this.isSuccess,
      required this.message,
      required this.data,
      required this.statusCode});

  factory _$UploadAvatarResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadAvatarResponseImplFromJson(json);

  @override
  final bool isSuccess;
  @override
  final String message;
  @override
  final UrlData data;
  @override
  final int statusCode;

  @override
  String toString() {
    return 'UploadAvatarResponse(isSuccess: $isSuccess, message: $message, data: $data, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadAvatarResponseImpl &&
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
  _$$UploadAvatarResponseImplCopyWith<_$UploadAvatarResponseImpl>
      get copyWith =>
          __$$UploadAvatarResponseImplCopyWithImpl<_$UploadAvatarResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadAvatarResponseImplToJson(
      this,
    );
  }
}

abstract class _UploadAvatarResponse implements UploadAvatarResponse {
  const factory _UploadAvatarResponse(
      {required final bool isSuccess,
      required final String message,
      required final UrlData data,
      required final int statusCode}) = _$UploadAvatarResponseImpl;

  factory _UploadAvatarResponse.fromJson(Map<String, dynamic> json) =
      _$UploadAvatarResponseImpl.fromJson;

  @override
  bool get isSuccess;
  @override
  String get message;
  @override
  UrlData get data;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$UploadAvatarResponseImplCopyWith<_$UploadAvatarResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UrlData _$UrlDataFromJson(Map<String, dynamic> json) {
  return _UrlData.fromJson(json);
}

/// @nodoc
mixin _$UrlData {
  String get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlDataCopyWith<UrlData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlDataCopyWith<$Res> {
  factory $UrlDataCopyWith(UrlData value, $Res Function(UrlData) then) =
      _$UrlDataCopyWithImpl<$Res, UrlData>;
  @useResult
  $Res call({String avatarUrl});
}

/// @nodoc
class _$UrlDataCopyWithImpl<$Res, $Val extends UrlData>
    implements $UrlDataCopyWith<$Res> {
  _$UrlDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarUrl = null,
  }) {
    return _then(_value.copyWith(
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UrlDataImplCopyWith<$Res> implements $UrlDataCopyWith<$Res> {
  factory _$$UrlDataImplCopyWith(
          _$UrlDataImpl value, $Res Function(_$UrlDataImpl) then) =
      __$$UrlDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String avatarUrl});
}

/// @nodoc
class __$$UrlDataImplCopyWithImpl<$Res>
    extends _$UrlDataCopyWithImpl<$Res, _$UrlDataImpl>
    implements _$$UrlDataImplCopyWith<$Res> {
  __$$UrlDataImplCopyWithImpl(
      _$UrlDataImpl _value, $Res Function(_$UrlDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarUrl = null,
  }) {
    return _then(_$UrlDataImpl(
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UrlDataImpl implements _UrlData {
  const _$UrlDataImpl({required this.avatarUrl});

  factory _$UrlDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UrlDataImplFromJson(json);

  @override
  final String avatarUrl;

  @override
  String toString() {
    return 'UrlData(avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrlDataImpl &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, avatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UrlDataImplCopyWith<_$UrlDataImpl> get copyWith =>
      __$$UrlDataImplCopyWithImpl<_$UrlDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UrlDataImplToJson(
      this,
    );
  }
}

abstract class _UrlData implements UrlData {
  const factory _UrlData({required final String avatarUrl}) = _$UrlDataImpl;

  factory _UrlData.fromJson(Map<String, dynamic> json) = _$UrlDataImpl.fromJson;

  @override
  String get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$$UrlDataImplCopyWith<_$UrlDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
