// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Topic _$TopicFromJson(Map<String, dynamic> json) {
  return _Topic.fromJson(json);
}

/// @nodoc
mixin _$Topic {
  int get id => throw _privateConstructorUsedError;
  String get topicCode => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isFree => throw _privateConstructorUsedError;
  String get hexColorCode => throw _privateConstructorUsedError;
  int get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'completedFlashcardCnt')
  int get completedFlashcardcnt => throw _privateConstructorUsedError;
  @JsonKey(name: 'flashcardCnt')
  int get flashcardCnt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicCopyWith<Topic> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicCopyWith<$Res> {
  factory $TopicCopyWith(Topic value, $Res Function(Topic) then) =
      _$TopicCopyWithImpl<$Res, Topic>;
  @useResult
  $Res call(
      {int id,
      String topicCode,
      String title,
      String description,
      bool isFree,
      String hexColorCode,
      int courseId,
      @JsonKey(name: 'completedFlashcardCnt') int completedFlashcardcnt,
      @JsonKey(name: 'flashcardCnt') int flashcardCnt});
}

/// @nodoc
class _$TopicCopyWithImpl<$Res, $Val extends Topic>
    implements $TopicCopyWith<$Res> {
  _$TopicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? topicCode = null,
    Object? title = null,
    Object? description = null,
    Object? isFree = null,
    Object? hexColorCode = null,
    Object? courseId = null,
    Object? completedFlashcardcnt = null,
    Object? flashcardCnt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      topicCode: null == topicCode
          ? _value.topicCode
          : topicCode // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      hexColorCode: null == hexColorCode
          ? _value.hexColorCode
          : hexColorCode // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
      completedFlashcardcnt: null == completedFlashcardcnt
          ? _value.completedFlashcardcnt
          : completedFlashcardcnt // ignore: cast_nullable_to_non_nullable
              as int,
      flashcardCnt: null == flashcardCnt
          ? _value.flashcardCnt
          : flashcardCnt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopicImplCopyWith<$Res> implements $TopicCopyWith<$Res> {
  factory _$$TopicImplCopyWith(
          _$TopicImpl value, $Res Function(_$TopicImpl) then) =
      __$$TopicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String topicCode,
      String title,
      String description,
      bool isFree,
      String hexColorCode,
      int courseId,
      @JsonKey(name: 'completedFlashcardCnt') int completedFlashcardcnt,
      @JsonKey(name: 'flashcardCnt') int flashcardCnt});
}

/// @nodoc
class __$$TopicImplCopyWithImpl<$Res>
    extends _$TopicCopyWithImpl<$Res, _$TopicImpl>
    implements _$$TopicImplCopyWith<$Res> {
  __$$TopicImplCopyWithImpl(
      _$TopicImpl _value, $Res Function(_$TopicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? topicCode = null,
    Object? title = null,
    Object? description = null,
    Object? isFree = null,
    Object? hexColorCode = null,
    Object? courseId = null,
    Object? completedFlashcardcnt = null,
    Object? flashcardCnt = null,
  }) {
    return _then(_$TopicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      topicCode: null == topicCode
          ? _value.topicCode
          : topicCode // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      hexColorCode: null == hexColorCode
          ? _value.hexColorCode
          : hexColorCode // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
      completedFlashcardcnt: null == completedFlashcardcnt
          ? _value.completedFlashcardcnt
          : completedFlashcardcnt // ignore: cast_nullable_to_non_nullable
              as int,
      flashcardCnt: null == flashcardCnt
          ? _value.flashcardCnt
          : flashcardCnt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopicImpl implements _Topic {
  const _$TopicImpl(
      {required this.id,
      required this.topicCode,
      required this.title,
      required this.description,
      required this.isFree,
      required this.hexColorCode,
      required this.courseId,
      @JsonKey(name: 'completedFlashcardCnt') this.completedFlashcardcnt = 0,
      @JsonKey(name: 'flashcardCnt') this.flashcardCnt = 0});

  factory _$TopicImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicImplFromJson(json);

  @override
  final int id;
  @override
  final String topicCode;
  @override
  final String title;
  @override
  final String description;
  @override
  final bool isFree;
  @override
  final String hexColorCode;
  @override
  final int courseId;
  @override
  @JsonKey(name: 'completedFlashcardCnt')
  final int completedFlashcardcnt;
  @override
  @JsonKey(name: 'flashcardCnt')
  final int flashcardCnt;

  @override
  String toString() {
    return 'Topic(id: $id, topicCode: $topicCode, title: $title, description: $description, isFree: $isFree, hexColorCode: $hexColorCode, courseId: $courseId, completedFlashcardcnt: $completedFlashcardcnt, flashcardCnt: $flashcardCnt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.topicCode, topicCode) ||
                other.topicCode == topicCode) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isFree, isFree) || other.isFree == isFree) &&
            (identical(other.hexColorCode, hexColorCode) ||
                other.hexColorCode == hexColorCode) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.completedFlashcardcnt, completedFlashcardcnt) ||
                other.completedFlashcardcnt == completedFlashcardcnt) &&
            (identical(other.flashcardCnt, flashcardCnt) ||
                other.flashcardCnt == flashcardCnt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      topicCode,
      title,
      description,
      isFree,
      hexColorCode,
      courseId,
      completedFlashcardcnt,
      flashcardCnt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicImplCopyWith<_$TopicImpl> get copyWith =>
      __$$TopicImplCopyWithImpl<_$TopicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicImplToJson(
      this,
    );
  }
}

abstract class _Topic implements Topic {
  const factory _Topic(
      {required final int id,
      required final String topicCode,
      required final String title,
      required final String description,
      required final bool isFree,
      required final String hexColorCode,
      required final int courseId,
      @JsonKey(name: 'completedFlashcardCnt') final int completedFlashcardcnt,
      @JsonKey(name: 'flashcardCnt') final int flashcardCnt}) = _$TopicImpl;

  factory _Topic.fromJson(Map<String, dynamic> json) = _$TopicImpl.fromJson;

  @override
  int get id;
  @override
  String get topicCode;
  @override
  String get title;
  @override
  String get description;
  @override
  bool get isFree;
  @override
  String get hexColorCode;
  @override
  int get courseId;
  @override
  @JsonKey(name: 'completedFlashcardCnt')
  int get completedFlashcardcnt;
  @override
  @JsonKey(name: 'flashcardCnt')
  int get flashcardCnt;
  @override
  @JsonKey(ignore: true)
  _$$TopicImplCopyWith<_$TopicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
