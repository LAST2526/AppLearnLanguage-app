// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lession_arguments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LessionArguments {
  bool get isGramma => throw _privateConstructorUsedError;
  int? get courseId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LessionArgumentsCopyWith<LessionArguments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessionArgumentsCopyWith<$Res> {
  factory $LessionArgumentsCopyWith(
          LessionArguments value, $Res Function(LessionArguments) then) =
      _$LessionArgumentsCopyWithImpl<$Res, LessionArguments>;
  @useResult
  $Res call({bool isGramma, int? courseId});
}

/// @nodoc
class _$LessionArgumentsCopyWithImpl<$Res, $Val extends LessionArguments>
    implements $LessionArgumentsCopyWith<$Res> {
  _$LessionArgumentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isGramma = null,
    Object? courseId = freezed,
  }) {
    return _then(_value.copyWith(
      isGramma: null == isGramma
          ? _value.isGramma
          : isGramma // ignore: cast_nullable_to_non_nullable
              as bool,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessionArgumentsImplCopyWith<$Res>
    implements $LessionArgumentsCopyWith<$Res> {
  factory _$$LessionArgumentsImplCopyWith(_$LessionArgumentsImpl value,
          $Res Function(_$LessionArgumentsImpl) then) =
      __$$LessionArgumentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isGramma, int? courseId});
}

/// @nodoc
class __$$LessionArgumentsImplCopyWithImpl<$Res>
    extends _$LessionArgumentsCopyWithImpl<$Res, _$LessionArgumentsImpl>
    implements _$$LessionArgumentsImplCopyWith<$Res> {
  __$$LessionArgumentsImplCopyWithImpl(_$LessionArgumentsImpl _value,
      $Res Function(_$LessionArgumentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isGramma = null,
    Object? courseId = freezed,
  }) {
    return _then(_$LessionArgumentsImpl(
      isGramma: null == isGramma
          ? _value.isGramma
          : isGramma // ignore: cast_nullable_to_non_nullable
              as bool,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$LessionArgumentsImpl implements _LessionArguments {
  const _$LessionArgumentsImpl({required this.isGramma, this.courseId});

  @override
  final bool isGramma;
  @override
  final int? courseId;

  @override
  String toString() {
    return 'LessionArguments(isGramma: $isGramma, courseId: $courseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessionArgumentsImpl &&
            (identical(other.isGramma, isGramma) ||
                other.isGramma == isGramma) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isGramma, courseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessionArgumentsImplCopyWith<_$LessionArgumentsImpl> get copyWith =>
      __$$LessionArgumentsImplCopyWithImpl<_$LessionArgumentsImpl>(
          this, _$identity);
}

abstract class _LessionArguments implements LessionArguments {
  const factory _LessionArguments(
      {required final bool isGramma,
      final int? courseId}) = _$LessionArgumentsImpl;

  @override
  bool get isGramma;
  @override
  int? get courseId;
  @override
  @JsonKey(ignore: true)
  _$$LessionArgumentsImplCopyWith<_$LessionArgumentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
