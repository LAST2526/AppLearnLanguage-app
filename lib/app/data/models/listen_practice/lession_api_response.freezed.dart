// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lession_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LessionApiResponse _$LessionApiResponseFromJson(Map<String, dynamic> json) {
  return _LessionApiResponse.fromJson(json);
}

/// @nodoc
mixin _$LessionApiResponse {
  bool get isSuccess => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<LessionData> get data => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessionApiResponseCopyWith<LessionApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessionApiResponseCopyWith<$Res> {
  factory $LessionApiResponseCopyWith(
          LessionApiResponse value, $Res Function(LessionApiResponse) then) =
      _$LessionApiResponseCopyWithImpl<$Res, LessionApiResponse>;
  @useResult
  $Res call(
      {bool isSuccess, String message, List<LessionData> data, int statusCode});
}

/// @nodoc
class _$LessionApiResponseCopyWithImpl<$Res, $Val extends LessionApiResponse>
    implements $LessionApiResponseCopyWith<$Res> {
  _$LessionApiResponseCopyWithImpl(this._value, this._then);

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
              as List<LessionData>,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessionApiResponseImplCopyWith<$Res>
    implements $LessionApiResponseCopyWith<$Res> {
  factory _$$LessionApiResponseImplCopyWith(_$LessionApiResponseImpl value,
          $Res Function(_$LessionApiResponseImpl) then) =
      __$$LessionApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSuccess, String message, List<LessionData> data, int statusCode});
}

/// @nodoc
class __$$LessionApiResponseImplCopyWithImpl<$Res>
    extends _$LessionApiResponseCopyWithImpl<$Res, _$LessionApiResponseImpl>
    implements _$$LessionApiResponseImplCopyWith<$Res> {
  __$$LessionApiResponseImplCopyWithImpl(_$LessionApiResponseImpl _value,
      $Res Function(_$LessionApiResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? message = null,
    Object? data = null,
    Object? statusCode = null,
  }) {
    return _then(_$LessionApiResponseImpl(
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
              as List<LessionData>,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessionApiResponseImpl implements _LessionApiResponse {
  const _$LessionApiResponseImpl(
      {required this.isSuccess,
      required this.message,
      required final List<LessionData> data,
      required this.statusCode})
      : _data = data;

  factory _$LessionApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessionApiResponseImplFromJson(json);

  @override
  final bool isSuccess;
  @override
  final String message;
  final List<LessionData> _data;
  @override
  List<LessionData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int statusCode;

  @override
  String toString() {
    return 'LessionApiResponse(isSuccess: $isSuccess, message: $message, data: $data, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessionApiResponseImpl &&
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
  _$$LessionApiResponseImplCopyWith<_$LessionApiResponseImpl> get copyWith =>
      __$$LessionApiResponseImplCopyWithImpl<_$LessionApiResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessionApiResponseImplToJson(
      this,
    );
  }
}

abstract class _LessionApiResponse implements LessionApiResponse {
  const factory _LessionApiResponse(
      {required final bool isSuccess,
      required final String message,
      required final List<LessionData> data,
      required final int statusCode}) = _$LessionApiResponseImpl;

  factory _LessionApiResponse.fromJson(Map<String, dynamic> json) =
      _$LessionApiResponseImpl.fromJson;

  @override
  bool get isSuccess;
  @override
  String get message;
  @override
  List<LessionData> get data;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$LessionApiResponseImplCopyWith<_$LessionApiResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LessionData _$LessionDataFromJson(Map<String, dynamic> json) {
  return _LessionData.fromJson(json);
}

/// @nodoc
mixin _$LessionData {
  int get id => throw _privateConstructorUsedError;
  String get audioCode => throw _privateConstructorUsedError;
  int get audioType => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;
  int get sortOrder => throw _privateConstructorUsedError;
  bool get isFree => throw _privateConstructorUsedError;
  String get script => throw _privateConstructorUsedError;
  String? get scriptEn => throw _privateConstructorUsedError;
  String? get scriptVi => throw _privateConstructorUsedError;
  int? get courseId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessionDataCopyWith<LessionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessionDataCopyWith<$Res> {
  factory $LessionDataCopyWith(
          LessionData value, $Res Function(LessionData) then) =
      _$LessionDataCopyWithImpl<$Res, LessionData>;
  @useResult
  $Res call(
      {int id,
      String audioCode,
      int audioType,
      String title,
      String fileUrl,
      int sortOrder,
      bool isFree,
      String script,
      String? scriptEn,
      String? scriptVi,
      int? courseId});
}

/// @nodoc
class _$LessionDataCopyWithImpl<$Res, $Val extends LessionData>
    implements $LessionDataCopyWith<$Res> {
  _$LessionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? audioCode = null,
    Object? audioType = null,
    Object? title = null,
    Object? fileUrl = null,
    Object? sortOrder = null,
    Object? isFree = null,
    Object? script = null,
    Object? scriptEn = freezed,
    Object? scriptVi = freezed,
    Object? courseId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      audioCode: null == audioCode
          ? _value.audioCode
          : audioCode // ignore: cast_nullable_to_non_nullable
              as String,
      audioType: null == audioType
          ? _value.audioType
          : audioType // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      script: null == script
          ? _value.script
          : script // ignore: cast_nullable_to_non_nullable
              as String,
      scriptEn: freezed == scriptEn
          ? _value.scriptEn
          : scriptEn // ignore: cast_nullable_to_non_nullable
              as String?,
      scriptVi: freezed == scriptVi
          ? _value.scriptVi
          : scriptVi // ignore: cast_nullable_to_non_nullable
              as String?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessionDataImplCopyWith<$Res>
    implements $LessionDataCopyWith<$Res> {
  factory _$$LessionDataImplCopyWith(
          _$LessionDataImpl value, $Res Function(_$LessionDataImpl) then) =
      __$$LessionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String audioCode,
      int audioType,
      String title,
      String fileUrl,
      int sortOrder,
      bool isFree,
      String script,
      String? scriptEn,
      String? scriptVi,
      int? courseId});
}

/// @nodoc
class __$$LessionDataImplCopyWithImpl<$Res>
    extends _$LessionDataCopyWithImpl<$Res, _$LessionDataImpl>
    implements _$$LessionDataImplCopyWith<$Res> {
  __$$LessionDataImplCopyWithImpl(
      _$LessionDataImpl _value, $Res Function(_$LessionDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? audioCode = null,
    Object? audioType = null,
    Object? title = null,
    Object? fileUrl = null,
    Object? sortOrder = null,
    Object? isFree = null,
    Object? script = null,
    Object? scriptEn = freezed,
    Object? scriptVi = freezed,
    Object? courseId = freezed,
  }) {
    return _then(_$LessionDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      audioCode: null == audioCode
          ? _value.audioCode
          : audioCode // ignore: cast_nullable_to_non_nullable
              as String,
      audioType: null == audioType
          ? _value.audioType
          : audioType // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      script: null == script
          ? _value.script
          : script // ignore: cast_nullable_to_non_nullable
              as String,
      scriptEn: freezed == scriptEn
          ? _value.scriptEn
          : scriptEn // ignore: cast_nullable_to_non_nullable
              as String?,
      scriptVi: freezed == scriptVi
          ? _value.scriptVi
          : scriptVi // ignore: cast_nullable_to_non_nullable
              as String?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessionDataImpl implements _LessionData {
  const _$LessionDataImpl(
      {required this.id,
      required this.audioCode,
      required this.audioType,
      required this.title,
      required this.fileUrl,
      required this.sortOrder,
      required this.isFree,
      required this.script,
      this.scriptEn,
      this.scriptVi,
      this.courseId});

  factory _$LessionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessionDataImplFromJson(json);

  @override
  final int id;
  @override
  final String audioCode;
  @override
  final int audioType;
  @override
  final String title;
  @override
  final String fileUrl;
  @override
  final int sortOrder;
  @override
  final bool isFree;
  @override
  final String script;
  @override
  final String? scriptEn;
  @override
  final String? scriptVi;
  @override
  final int? courseId;

  @override
  String toString() {
    return 'LessionData(id: $id, audioCode: $audioCode, audioType: $audioType, title: $title, fileUrl: $fileUrl, sortOrder: $sortOrder, isFree: $isFree, script: $script, scriptEn: $scriptEn, scriptVi: $scriptVi, courseId: $courseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessionDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.audioCode, audioCode) ||
                other.audioCode == audioCode) &&
            (identical(other.audioType, audioType) ||
                other.audioType == audioType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.isFree, isFree) || other.isFree == isFree) &&
            (identical(other.script, script) || other.script == script) &&
            (identical(other.scriptEn, scriptEn) ||
                other.scriptEn == scriptEn) &&
            (identical(other.scriptVi, scriptVi) ||
                other.scriptVi == scriptVi) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, audioCode, audioType, title,
      fileUrl, sortOrder, isFree, script, scriptEn, scriptVi, courseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessionDataImplCopyWith<_$LessionDataImpl> get copyWith =>
      __$$LessionDataImplCopyWithImpl<_$LessionDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessionDataImplToJson(
      this,
    );
  }
}

abstract class _LessionData implements LessionData {
  const factory _LessionData(
      {required final int id,
      required final String audioCode,
      required final int audioType,
      required final String title,
      required final String fileUrl,
      required final int sortOrder,
      required final bool isFree,
      required final String script,
      final String? scriptEn,
      final String? scriptVi,
      final int? courseId}) = _$LessionDataImpl;

  factory _LessionData.fromJson(Map<String, dynamic> json) =
      _$LessionDataImpl.fromJson;

  @override
  int get id;
  @override
  String get audioCode;
  @override
  int get audioType;
  @override
  String get title;
  @override
  String get fileUrl;
  @override
  int get sortOrder;
  @override
  bool get isFree;
  @override
  String get script;
  @override
  String? get scriptEn;
  @override
  String? get scriptVi;
  @override
  int? get courseId;
  @override
  @JsonKey(ignore: true)
  _$$LessionDataImplCopyWith<_$LessionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
