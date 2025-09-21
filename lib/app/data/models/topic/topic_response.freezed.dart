// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topic_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopicResponse _$TopicResponseFromJson(Map<String, dynamic> json) {
  return _TopicResponse.fromJson(json);
}

/// @nodoc
mixin _$TopicResponse {
  bool get isSuccess => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<Topic> get data => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicResponseCopyWith<TopicResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicResponseCopyWith<$Res> {
  factory $TopicResponseCopyWith(
          TopicResponse value, $Res Function(TopicResponse) then) =
      _$TopicResponseCopyWithImpl<$Res, TopicResponse>;
  @useResult
  $Res call({bool isSuccess, String message, List<Topic> data, int statusCode});
}

/// @nodoc
class _$TopicResponseCopyWithImpl<$Res, $Val extends TopicResponse>
    implements $TopicResponseCopyWith<$Res> {
  _$TopicResponseCopyWithImpl(this._value, this._then);

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
              as List<Topic>,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopicResponseImplCopyWith<$Res>
    implements $TopicResponseCopyWith<$Res> {
  factory _$$TopicResponseImplCopyWith(
          _$TopicResponseImpl value, $Res Function(_$TopicResponseImpl) then) =
      __$$TopicResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSuccess, String message, List<Topic> data, int statusCode});
}

/// @nodoc
class __$$TopicResponseImplCopyWithImpl<$Res>
    extends _$TopicResponseCopyWithImpl<$Res, _$TopicResponseImpl>
    implements _$$TopicResponseImplCopyWith<$Res> {
  __$$TopicResponseImplCopyWithImpl(
      _$TopicResponseImpl _value, $Res Function(_$TopicResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? message = null,
    Object? data = null,
    Object? statusCode = null,
  }) {
    return _then(_$TopicResponseImpl(
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopicResponseImpl implements _TopicResponse {
  const _$TopicResponseImpl(
      {required this.isSuccess,
      required this.message,
      required final List<Topic> data,
      required this.statusCode})
      : _data = data;

  factory _$TopicResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicResponseImplFromJson(json);

  @override
  final bool isSuccess;
  @override
  final String message;
  final List<Topic> _data;
  @override
  List<Topic> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int statusCode;

  @override
  String toString() {
    return 'TopicResponse(isSuccess: $isSuccess, message: $message, data: $data, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicResponseImpl &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isSuccess, message,
      const DeepCollectionEquality().hash(_data), statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicResponseImplCopyWith<_$TopicResponseImpl> get copyWith =>
      __$$TopicResponseImplCopyWithImpl<_$TopicResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicResponseImplToJson(
      this,
    );
  }
}

abstract class _TopicResponse implements TopicResponse {
  const factory _TopicResponse(
      {required final bool isSuccess,
      required final String message,
      required final List<Topic> data,
      required final int statusCode}) = _$TopicResponseImpl;

  factory _TopicResponse.fromJson(Map<String, dynamic> json) =
      _$TopicResponseImpl.fromJson;

  @override
  bool get isSuccess;
  @override
  String get message;
  @override
  List<Topic> get data;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$TopicResponseImplCopyWith<_$TopicResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
