// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_info_arguments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BasicInfoArguments {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  int? get provider => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  List<Course>? get courses => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasicInfoArgumentsCopyWith<BasicInfoArguments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicInfoArgumentsCopyWith<$Res> {
  factory $BasicInfoArgumentsCopyWith(
          BasicInfoArguments value, $Res Function(BasicInfoArguments) then) =
      _$BasicInfoArgumentsCopyWithImpl<$Res, BasicInfoArguments>;
  @useResult
  $Res call(
      {String? email,
      String? password,
      int? provider,
      String? userName,
      List<Course>? courses});
}

/// @nodoc
class _$BasicInfoArgumentsCopyWithImpl<$Res, $Val extends BasicInfoArguments>
    implements $BasicInfoArgumentsCopyWith<$Res> {
  _$BasicInfoArgumentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? provider = freezed,
    Object? userName = freezed,
    Object? courses = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      courses: freezed == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasicInfoArgumentsImplCopyWith<$Res>
    implements $BasicInfoArgumentsCopyWith<$Res> {
  factory _$$BasicInfoArgumentsImplCopyWith(_$BasicInfoArgumentsImpl value,
          $Res Function(_$BasicInfoArgumentsImpl) then) =
      __$$BasicInfoArgumentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? email,
      String? password,
      int? provider,
      String? userName,
      List<Course>? courses});
}

/// @nodoc
class __$$BasicInfoArgumentsImplCopyWithImpl<$Res>
    extends _$BasicInfoArgumentsCopyWithImpl<$Res, _$BasicInfoArgumentsImpl>
    implements _$$BasicInfoArgumentsImplCopyWith<$Res> {
  __$$BasicInfoArgumentsImplCopyWithImpl(_$BasicInfoArgumentsImpl _value,
      $Res Function(_$BasicInfoArgumentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? provider = freezed,
    Object? userName = freezed,
    Object? courses = freezed,
  }) {
    return _then(_$BasicInfoArgumentsImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      courses: freezed == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>?,
    ));
  }
}

/// @nodoc

class _$BasicInfoArgumentsImpl implements _BasicInfoArguments {
  const _$BasicInfoArgumentsImpl(
      {this.email,
      this.password,
      this.provider,
      this.userName,
      final List<Course>? courses})
      : _courses = courses;

  @override
  final String? email;
  @override
  final String? password;
  @override
  final int? provider;
  @override
  final String? userName;
  final List<Course>? _courses;
  @override
  List<Course>? get courses {
    final value = _courses;
    if (value == null) return null;
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BasicInfoArguments(email: $email, password: $password, provider: $provider, userName: $userName, courses: $courses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasicInfoArgumentsImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, provider,
      userName, const DeepCollectionEquality().hash(_courses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasicInfoArgumentsImplCopyWith<_$BasicInfoArgumentsImpl> get copyWith =>
      __$$BasicInfoArgumentsImplCopyWithImpl<_$BasicInfoArgumentsImpl>(
          this, _$identity);
}

abstract class _BasicInfoArguments implements BasicInfoArguments {
  const factory _BasicInfoArguments(
      {final String? email,
      final String? password,
      final int? provider,
      final String? userName,
      final List<Course>? courses}) = _$BasicInfoArgumentsImpl;

  @override
  String? get email;
  @override
  String? get password;
  @override
  int? get provider;
  @override
  String? get userName;
  @override
  List<Course>? get courses;
  @override
  @JsonKey(ignore: true)
  _$$BasicInfoArgumentsImplCopyWith<_$BasicInfoArgumentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
