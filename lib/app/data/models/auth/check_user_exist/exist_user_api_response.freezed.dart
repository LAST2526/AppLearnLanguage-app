// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exist_user_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExistApiResponse _$ExistApiResponseFromJson(Map<String, dynamic> json) {
  return _ExistApiResponse.fromJson(json);
}

/// @nodoc
mixin _$ExistApiResponse {
  bool get isSuccess => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  ExistData get data => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExistApiResponseCopyWith<ExistApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExistApiResponseCopyWith<$Res> {
  factory $ExistApiResponseCopyWith(
          ExistApiResponse value, $Res Function(ExistApiResponse) then) =
      _$ExistApiResponseCopyWithImpl<$Res, ExistApiResponse>;
  @useResult
  $Res call({bool isSuccess, String message, ExistData data, int statusCode});

  $ExistDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ExistApiResponseCopyWithImpl<$Res, $Val extends ExistApiResponse>
    implements $ExistApiResponseCopyWith<$Res> {
  _$ExistApiResponseCopyWithImpl(this._value, this._then);

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
              as ExistData,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExistDataCopyWith<$Res> get data {
    return $ExistDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExistApiResponseImplCopyWith<$Res>
    implements $ExistApiResponseCopyWith<$Res> {
  factory _$$ExistApiResponseImplCopyWith(_$ExistApiResponseImpl value,
          $Res Function(_$ExistApiResponseImpl) then) =
      __$$ExistApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSuccess, String message, ExistData data, int statusCode});

  @override
  $ExistDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ExistApiResponseImplCopyWithImpl<$Res>
    extends _$ExistApiResponseCopyWithImpl<$Res, _$ExistApiResponseImpl>
    implements _$$ExistApiResponseImplCopyWith<$Res> {
  __$$ExistApiResponseImplCopyWithImpl(_$ExistApiResponseImpl _value,
      $Res Function(_$ExistApiResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? message = null,
    Object? data = null,
    Object? statusCode = null,
  }) {
    return _then(_$ExistApiResponseImpl(
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
              as ExistData,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExistApiResponseImpl implements _ExistApiResponse {
  const _$ExistApiResponseImpl(
      {required this.isSuccess,
      required this.message,
      required this.data,
      required this.statusCode});

  factory _$ExistApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExistApiResponseImplFromJson(json);

  @override
  final bool isSuccess;
  @override
  final String message;
  @override
  final ExistData data;
  @override
  final int statusCode;

  @override
  String toString() {
    return 'ExistApiResponse(isSuccess: $isSuccess, message: $message, data: $data, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExistApiResponseImpl &&
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
  _$$ExistApiResponseImplCopyWith<_$ExistApiResponseImpl> get copyWith =>
      __$$ExistApiResponseImplCopyWithImpl<_$ExistApiResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExistApiResponseImplToJson(
      this,
    );
  }
}

abstract class _ExistApiResponse implements ExistApiResponse {
  const factory _ExistApiResponse(
      {required final bool isSuccess,
      required final String message,
      required final ExistData data,
      required final int statusCode}) = _$ExistApiResponseImpl;

  factory _ExistApiResponse.fromJson(Map<String, dynamic> json) =
      _$ExistApiResponseImpl.fromJson;

  @override
  bool get isSuccess;
  @override
  String get message;
  @override
  ExistData get data;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$ExistApiResponseImplCopyWith<_$ExistApiResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExistData _$ExistDataFromJson(Map<String, dynamic> json) {
  return _ExistData.fromJson(json);
}

/// @nodoc
mixin _$ExistData {
  bool get isExist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExistDataCopyWith<ExistData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExistDataCopyWith<$Res> {
  factory $ExistDataCopyWith(ExistData value, $Res Function(ExistData) then) =
      _$ExistDataCopyWithImpl<$Res, ExistData>;
  @useResult
  $Res call({bool isExist});
}

/// @nodoc
class _$ExistDataCopyWithImpl<$Res, $Val extends ExistData>
    implements $ExistDataCopyWith<$Res> {
  _$ExistDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExist = null,
  }) {
    return _then(_value.copyWith(
      isExist: null == isExist
          ? _value.isExist
          : isExist // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExistDataImplCopyWith<$Res>
    implements $ExistDataCopyWith<$Res> {
  factory _$$ExistDataImplCopyWith(
          _$ExistDataImpl value, $Res Function(_$ExistDataImpl) then) =
      __$$ExistDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isExist});
}

/// @nodoc
class __$$ExistDataImplCopyWithImpl<$Res>
    extends _$ExistDataCopyWithImpl<$Res, _$ExistDataImpl>
    implements _$$ExistDataImplCopyWith<$Res> {
  __$$ExistDataImplCopyWithImpl(
      _$ExistDataImpl _value, $Res Function(_$ExistDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExist = null,
  }) {
    return _then(_$ExistDataImpl(
      isExist: null == isExist
          ? _value.isExist
          : isExist // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExistDataImpl implements _ExistData {
  const _$ExistDataImpl({required this.isExist});

  factory _$ExistDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExistDataImplFromJson(json);

  @override
  final bool isExist;

  @override
  String toString() {
    return 'ExistData(isExist: $isExist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExistDataImpl &&
            (identical(other.isExist, isExist) || other.isExist == isExist));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isExist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExistDataImplCopyWith<_$ExistDataImpl> get copyWith =>
      __$$ExistDataImplCopyWithImpl<_$ExistDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExistDataImplToJson(
      this,
    );
  }
}

abstract class _ExistData implements ExistData {
  const factory _ExistData({required final bool isExist}) = _$ExistDataImpl;

  factory _ExistData.fromJson(Map<String, dynamic> json) =
      _$ExistDataImpl.fromJson;

  @override
  bool get isExist;
  @override
  @JsonKey(ignore: true)
  _$$ExistDataImplCopyWith<_$ExistDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
