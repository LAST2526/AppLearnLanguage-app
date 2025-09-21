// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flash_card_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FlashCardApiResponse _$FlashCardApiResponseFromJson(Map<String, dynamic> json) {
  return _FlashCardApiResponse.fromJson(json);
}

/// @nodoc
mixin _$FlashCardApiResponse {
  bool get isSuccess => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<FlashCardData> get data => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlashCardApiResponseCopyWith<FlashCardApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashCardApiResponseCopyWith<$Res> {
  factory $FlashCardApiResponseCopyWith(FlashCardApiResponse value,
          $Res Function(FlashCardApiResponse) then) =
      _$FlashCardApiResponseCopyWithImpl<$Res, FlashCardApiResponse>;
  @useResult
  $Res call(
      {bool isSuccess,
      String message,
      List<FlashCardData> data,
      int statusCode});
}

/// @nodoc
class _$FlashCardApiResponseCopyWithImpl<$Res,
        $Val extends FlashCardApiResponse>
    implements $FlashCardApiResponseCopyWith<$Res> {
  _$FlashCardApiResponseCopyWithImpl(this._value, this._then);

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
              as List<FlashCardData>,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlashCardApiResponseImplCopyWith<$Res>
    implements $FlashCardApiResponseCopyWith<$Res> {
  factory _$$FlashCardApiResponseImplCopyWith(_$FlashCardApiResponseImpl value,
          $Res Function(_$FlashCardApiResponseImpl) then) =
      __$$FlashCardApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSuccess,
      String message,
      List<FlashCardData> data,
      int statusCode});
}

/// @nodoc
class __$$FlashCardApiResponseImplCopyWithImpl<$Res>
    extends _$FlashCardApiResponseCopyWithImpl<$Res, _$FlashCardApiResponseImpl>
    implements _$$FlashCardApiResponseImplCopyWith<$Res> {
  __$$FlashCardApiResponseImplCopyWithImpl(_$FlashCardApiResponseImpl _value,
      $Res Function(_$FlashCardApiResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? message = null,
    Object? data = null,
    Object? statusCode = null,
  }) {
    return _then(_$FlashCardApiResponseImpl(
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
              as List<FlashCardData>,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlashCardApiResponseImpl implements _FlashCardApiResponse {
  const _$FlashCardApiResponseImpl(
      {required this.isSuccess,
      required this.message,
      required final List<FlashCardData> data,
      required this.statusCode})
      : _data = data;

  factory _$FlashCardApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlashCardApiResponseImplFromJson(json);

  @override
  final bool isSuccess;
  @override
  final String message;
  final List<FlashCardData> _data;
  @override
  List<FlashCardData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int statusCode;

  @override
  String toString() {
    return 'FlashCardApiResponse(isSuccess: $isSuccess, message: $message, data: $data, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashCardApiResponseImpl &&
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
  _$$FlashCardApiResponseImplCopyWith<_$FlashCardApiResponseImpl>
      get copyWith =>
          __$$FlashCardApiResponseImplCopyWithImpl<_$FlashCardApiResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlashCardApiResponseImplToJson(
      this,
    );
  }
}

abstract class _FlashCardApiResponse implements FlashCardApiResponse {
  const factory _FlashCardApiResponse(
      {required final bool isSuccess,
      required final String message,
      required final List<FlashCardData> data,
      required final int statusCode}) = _$FlashCardApiResponseImpl;

  factory _FlashCardApiResponse.fromJson(Map<String, dynamic> json) =
      _$FlashCardApiResponseImpl.fromJson;

  @override
  bool get isSuccess;
  @override
  String get message;
  @override
  List<FlashCardData> get data;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$FlashCardApiResponseImplCopyWith<_$FlashCardApiResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FlashCardData _$FlashCardDataFromJson(Map<String, dynamic> json) {
  return _FlashCardData.fromJson(json);
}

/// @nodoc
mixin _$FlashCardData {
  int get id => throw _privateConstructorUsedError;
  String get flashcardCode => throw _privateConstructorUsedError;
  String get front => throw _privateConstructorUsedError;
  String get furigana => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get meaningVi => throw _privateConstructorUsedError;
  String get meaningEn => throw _privateConstructorUsedError;
  String get example => throw _privateConstructorUsedError;
  String get exampleVi => throw _privateConstructorUsedError;
  String get exampleEn => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  int get topicId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlashCardDataCopyWith<FlashCardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashCardDataCopyWith<$Res> {
  factory $FlashCardDataCopyWith(
          FlashCardData value, $Res Function(FlashCardData) then) =
      _$FlashCardDataCopyWithImpl<$Res, FlashCardData>;
  @useResult
  $Res call(
      {int id,
      String flashcardCode,
      String front,
      String furigana,
      String imageUrl,
      String meaningVi,
      String meaningEn,
      String example,
      String exampleVi,
      String exampleEn,
      int count,
      int status,
      int topicId});
}

/// @nodoc
class _$FlashCardDataCopyWithImpl<$Res, $Val extends FlashCardData>
    implements $FlashCardDataCopyWith<$Res> {
  _$FlashCardDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? flashcardCode = null,
    Object? front = null,
    Object? furigana = null,
    Object? imageUrl = null,
    Object? meaningVi = null,
    Object? meaningEn = null,
    Object? example = null,
    Object? exampleVi = null,
    Object? exampleEn = null,
    Object? count = null,
    Object? status = null,
    Object? topicId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      flashcardCode: null == flashcardCode
          ? _value.flashcardCode
          : flashcardCode // ignore: cast_nullable_to_non_nullable
              as String,
      front: null == front
          ? _value.front
          : front // ignore: cast_nullable_to_non_nullable
              as String,
      furigana: null == furigana
          ? _value.furigana
          : furigana // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      meaningVi: null == meaningVi
          ? _value.meaningVi
          : meaningVi // ignore: cast_nullable_to_non_nullable
              as String,
      meaningEn: null == meaningEn
          ? _value.meaningEn
          : meaningEn // ignore: cast_nullable_to_non_nullable
              as String,
      example: null == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String,
      exampleVi: null == exampleVi
          ? _value.exampleVi
          : exampleVi // ignore: cast_nullable_to_non_nullable
              as String,
      exampleEn: null == exampleEn
          ? _value.exampleEn
          : exampleEn // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      topicId: null == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlashCardDataImplCopyWith<$Res>
    implements $FlashCardDataCopyWith<$Res> {
  factory _$$FlashCardDataImplCopyWith(
          _$FlashCardDataImpl value, $Res Function(_$FlashCardDataImpl) then) =
      __$$FlashCardDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String flashcardCode,
      String front,
      String furigana,
      String imageUrl,
      String meaningVi,
      String meaningEn,
      String example,
      String exampleVi,
      String exampleEn,
      int count,
      int status,
      int topicId});
}

/// @nodoc
class __$$FlashCardDataImplCopyWithImpl<$Res>
    extends _$FlashCardDataCopyWithImpl<$Res, _$FlashCardDataImpl>
    implements _$$FlashCardDataImplCopyWith<$Res> {
  __$$FlashCardDataImplCopyWithImpl(
      _$FlashCardDataImpl _value, $Res Function(_$FlashCardDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? flashcardCode = null,
    Object? front = null,
    Object? furigana = null,
    Object? imageUrl = null,
    Object? meaningVi = null,
    Object? meaningEn = null,
    Object? example = null,
    Object? exampleVi = null,
    Object? exampleEn = null,
    Object? count = null,
    Object? status = null,
    Object? topicId = null,
  }) {
    return _then(_$FlashCardDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      flashcardCode: null == flashcardCode
          ? _value.flashcardCode
          : flashcardCode // ignore: cast_nullable_to_non_nullable
              as String,
      front: null == front
          ? _value.front
          : front // ignore: cast_nullable_to_non_nullable
              as String,
      furigana: null == furigana
          ? _value.furigana
          : furigana // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      meaningVi: null == meaningVi
          ? _value.meaningVi
          : meaningVi // ignore: cast_nullable_to_non_nullable
              as String,
      meaningEn: null == meaningEn
          ? _value.meaningEn
          : meaningEn // ignore: cast_nullable_to_non_nullable
              as String,
      example: null == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String,
      exampleVi: null == exampleVi
          ? _value.exampleVi
          : exampleVi // ignore: cast_nullable_to_non_nullable
              as String,
      exampleEn: null == exampleEn
          ? _value.exampleEn
          : exampleEn // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      topicId: null == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlashCardDataImpl implements _FlashCardData {
  const _$FlashCardDataImpl(
      {required this.id,
      required this.flashcardCode,
      required this.front,
      required this.furigana,
      required this.imageUrl,
      required this.meaningVi,
      required this.meaningEn,
      required this.example,
      required this.exampleVi,
      required this.exampleEn,
      this.count = 0,
      this.status = 0,
      required this.topicId});

  factory _$FlashCardDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlashCardDataImplFromJson(json);

  @override
  final int id;
  @override
  final String flashcardCode;
  @override
  final String front;
  @override
  final String furigana;
  @override
  final String imageUrl;
  @override
  final String meaningVi;
  @override
  final String meaningEn;
  @override
  final String example;
  @override
  final String exampleVi;
  @override
  final String exampleEn;
  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final int status;
  @override
  final int topicId;

  @override
  String toString() {
    return 'FlashCardData(id: $id, flashcardCode: $flashcardCode, front: $front, furigana: $furigana, imageUrl: $imageUrl, meaningVi: $meaningVi, meaningEn: $meaningEn, example: $example, exampleVi: $exampleVi, exampleEn: $exampleEn, count: $count, status: $status, topicId: $topicId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashCardDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.flashcardCode, flashcardCode) ||
                other.flashcardCode == flashcardCode) &&
            (identical(other.front, front) || other.front == front) &&
            (identical(other.furigana, furigana) ||
                other.furigana == furigana) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.meaningVi, meaningVi) ||
                other.meaningVi == meaningVi) &&
            (identical(other.meaningEn, meaningEn) ||
                other.meaningEn == meaningEn) &&
            (identical(other.example, example) || other.example == example) &&
            (identical(other.exampleVi, exampleVi) ||
                other.exampleVi == exampleVi) &&
            (identical(other.exampleEn, exampleEn) ||
                other.exampleEn == exampleEn) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.topicId, topicId) || other.topicId == topicId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      flashcardCode,
      front,
      furigana,
      imageUrl,
      meaningVi,
      meaningEn,
      example,
      exampleVi,
      exampleEn,
      count,
      status,
      topicId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashCardDataImplCopyWith<_$FlashCardDataImpl> get copyWith =>
      __$$FlashCardDataImplCopyWithImpl<_$FlashCardDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlashCardDataImplToJson(
      this,
    );
  }
}

abstract class _FlashCardData implements FlashCardData {
  const factory _FlashCardData(
      {required final int id,
      required final String flashcardCode,
      required final String front,
      required final String furigana,
      required final String imageUrl,
      required final String meaningVi,
      required final String meaningEn,
      required final String example,
      required final String exampleVi,
      required final String exampleEn,
      final int count,
      final int status,
      required final int topicId}) = _$FlashCardDataImpl;

  factory _FlashCardData.fromJson(Map<String, dynamic> json) =
      _$FlashCardDataImpl.fromJson;

  @override
  int get id;
  @override
  String get flashcardCode;
  @override
  String get front;
  @override
  String get furigana;
  @override
  String get imageUrl;
  @override
  String get meaningVi;
  @override
  String get meaningEn;
  @override
  String get example;
  @override
  String get exampleVi;
  @override
  String get exampleEn;
  @override
  int get count;
  @override
  int get status;
  @override
  int get topicId;
  @override
  @JsonKey(ignore: true)
  _$$FlashCardDataImplCopyWith<_$FlashCardDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
