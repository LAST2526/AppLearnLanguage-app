// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangePasswordApiResponse _$ChangePasswordApiResponseFromJson(
    Map<String, dynamic> json) {
  return _ChangePasswordApiResponse.fromJson(json);
}

/// @nodoc
mixin _$ChangePasswordApiResponse {
  bool get isSuccess => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  ChangePasswordData get data => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangePasswordApiResponseCopyWith<ChangePasswordApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordApiResponseCopyWith<$Res> {
  factory $ChangePasswordApiResponseCopyWith(ChangePasswordApiResponse value,
          $Res Function(ChangePasswordApiResponse) then) =
      _$ChangePasswordApiResponseCopyWithImpl<$Res, ChangePasswordApiResponse>;
  @useResult
  $Res call(
      {bool isSuccess,
      String message,
      ChangePasswordData data,
      int statusCode});

  $ChangePasswordDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ChangePasswordApiResponseCopyWithImpl<$Res,
        $Val extends ChangePasswordApiResponse>
    implements $ChangePasswordApiResponseCopyWith<$Res> {
  _$ChangePasswordApiResponseCopyWithImpl(this._value, this._then);

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
              as ChangePasswordData,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChangePasswordDataCopyWith<$Res> get data {
    return $ChangePasswordDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChangePasswordApiResponseImplCopyWith<$Res>
    implements $ChangePasswordApiResponseCopyWith<$Res> {
  factory _$$ChangePasswordApiResponseImplCopyWith(
          _$ChangePasswordApiResponseImpl value,
          $Res Function(_$ChangePasswordApiResponseImpl) then) =
      __$$ChangePasswordApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSuccess,
      String message,
      ChangePasswordData data,
      int statusCode});

  @override
  $ChangePasswordDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ChangePasswordApiResponseImplCopyWithImpl<$Res>
    extends _$ChangePasswordApiResponseCopyWithImpl<$Res,
        _$ChangePasswordApiResponseImpl>
    implements _$$ChangePasswordApiResponseImplCopyWith<$Res> {
  __$$ChangePasswordApiResponseImplCopyWithImpl(
      _$ChangePasswordApiResponseImpl _value,
      $Res Function(_$ChangePasswordApiResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? message = null,
    Object? data = null,
    Object? statusCode = null,
  }) {
    return _then(_$ChangePasswordApiResponseImpl(
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
              as ChangePasswordData,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangePasswordApiResponseImpl implements _ChangePasswordApiResponse {
  const _$ChangePasswordApiResponseImpl(
      {required this.isSuccess,
      required this.message,
      required this.data,
      required this.statusCode});

  factory _$ChangePasswordApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangePasswordApiResponseImplFromJson(json);

  @override
  final bool isSuccess;
  @override
  final String message;
  @override
  final ChangePasswordData data;
  @override
  final int statusCode;

  @override
  String toString() {
    return 'ChangePasswordApiResponse(isSuccess: $isSuccess, message: $message, data: $data, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordApiResponseImpl &&
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
  _$$ChangePasswordApiResponseImplCopyWith<_$ChangePasswordApiResponseImpl>
      get copyWith => __$$ChangePasswordApiResponseImplCopyWithImpl<
          _$ChangePasswordApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePasswordApiResponseImplToJson(
      this,
    );
  }
}

abstract class _ChangePasswordApiResponse implements ChangePasswordApiResponse {
  const factory _ChangePasswordApiResponse(
      {required final bool isSuccess,
      required final String message,
      required final ChangePasswordData data,
      required final int statusCode}) = _$ChangePasswordApiResponseImpl;

  factory _ChangePasswordApiResponse.fromJson(Map<String, dynamic> json) =
      _$ChangePasswordApiResponseImpl.fromJson;

  @override
  bool get isSuccess;
  @override
  String get message;
  @override
  ChangePasswordData get data;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$ChangePasswordApiResponseImplCopyWith<_$ChangePasswordApiResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ChangePasswordData _$ChangePasswordDataFromJson(Map<String, dynamic> json) {
  return _ChangePasswordData.fromJson(json);
}

/// @nodoc
mixin _$ChangePasswordData {
  bool get isChanged => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangePasswordDataCopyWith<ChangePasswordData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordDataCopyWith<$Res> {
  factory $ChangePasswordDataCopyWith(
          ChangePasswordData value, $Res Function(ChangePasswordData) then) =
      _$ChangePasswordDataCopyWithImpl<$Res, ChangePasswordData>;
  @useResult
  $Res call({bool isChanged});
}

/// @nodoc
class _$ChangePasswordDataCopyWithImpl<$Res, $Val extends ChangePasswordData>
    implements $ChangePasswordDataCopyWith<$Res> {
  _$ChangePasswordDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isChanged = null,
  }) {
    return _then(_value.copyWith(
      isChanged: null == isChanged
          ? _value.isChanged
          : isChanged // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePasswordDataImplCopyWith<$Res>
    implements $ChangePasswordDataCopyWith<$Res> {
  factory _$$ChangePasswordDataImplCopyWith(_$ChangePasswordDataImpl value,
          $Res Function(_$ChangePasswordDataImpl) then) =
      __$$ChangePasswordDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isChanged});
}

/// @nodoc
class __$$ChangePasswordDataImplCopyWithImpl<$Res>
    extends _$ChangePasswordDataCopyWithImpl<$Res, _$ChangePasswordDataImpl>
    implements _$$ChangePasswordDataImplCopyWith<$Res> {
  __$$ChangePasswordDataImplCopyWithImpl(_$ChangePasswordDataImpl _value,
      $Res Function(_$ChangePasswordDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isChanged = null,
  }) {
    return _then(_$ChangePasswordDataImpl(
      isChanged: null == isChanged
          ? _value.isChanged
          : isChanged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangePasswordDataImpl implements _ChangePasswordData {
  const _$ChangePasswordDataImpl({required this.isChanged});

  factory _$ChangePasswordDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangePasswordDataImplFromJson(json);

  @override
  final bool isChanged;

  @override
  String toString() {
    return 'ChangePasswordData(isChanged: $isChanged)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordDataImpl &&
            (identical(other.isChanged, isChanged) ||
                other.isChanged == isChanged));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isChanged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordDataImplCopyWith<_$ChangePasswordDataImpl> get copyWith =>
      __$$ChangePasswordDataImplCopyWithImpl<_$ChangePasswordDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePasswordDataImplToJson(
      this,
    );
  }
}

abstract class _ChangePasswordData implements ChangePasswordData {
  const factory _ChangePasswordData({required final bool isChanged}) =
      _$ChangePasswordDataImpl;

  factory _ChangePasswordData.fromJson(Map<String, dynamic> json) =
      _$ChangePasswordDataImpl.fromJson;

  @override
  bool get isChanged;
  @override
  @JsonKey(ignore: true)
  _$$ChangePasswordDataImplCopyWith<_$ChangePasswordDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
