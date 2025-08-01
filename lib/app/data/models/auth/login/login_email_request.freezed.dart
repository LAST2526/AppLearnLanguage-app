// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_email_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginEmailRequest _$LoginEmailRequestFromJson(Map<String, dynamic> json) {
  return _LoginEmailRequest.fromJson(json);
}

/// @nodoc
mixin _$LoginEmailRequest {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginEmailRequestCopyWith<LoginEmailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEmailRequestCopyWith<$Res> {
  factory $LoginEmailRequestCopyWith(
          LoginEmailRequest value, $Res Function(LoginEmailRequest) then) =
      _$LoginEmailRequestCopyWithImpl<$Res, LoginEmailRequest>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginEmailRequestCopyWithImpl<$Res, $Val extends LoginEmailRequest>
    implements $LoginEmailRequestCopyWith<$Res> {
  _$LoginEmailRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginEmailRequestImplCopyWith<$Res>
    implements $LoginEmailRequestCopyWith<$Res> {
  factory _$$LoginEmailRequestImplCopyWith(_$LoginEmailRequestImpl value,
          $Res Function(_$LoginEmailRequestImpl) then) =
      __$$LoginEmailRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginEmailRequestImplCopyWithImpl<$Res>
    extends _$LoginEmailRequestCopyWithImpl<$Res, _$LoginEmailRequestImpl>
    implements _$$LoginEmailRequestImplCopyWith<$Res> {
  __$$LoginEmailRequestImplCopyWithImpl(_$LoginEmailRequestImpl _value,
      $Res Function(_$LoginEmailRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginEmailRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginEmailRequestImpl implements _LoginEmailRequest {
  const _$LoginEmailRequestImpl({required this.email, required this.password});

  factory _$LoginEmailRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginEmailRequestImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEmailRequest(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEmailRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEmailRequestImplCopyWith<_$LoginEmailRequestImpl> get copyWith =>
      __$$LoginEmailRequestImplCopyWithImpl<_$LoginEmailRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginEmailRequestImplToJson(
      this,
    );
  }
}

abstract class _LoginEmailRequest implements LoginEmailRequest {
  const factory _LoginEmailRequest(
      {required final String email,
      required final String password}) = _$LoginEmailRequestImpl;

  factory _LoginEmailRequest.fromJson(Map<String, dynamic> json) =
      _$LoginEmailRequestImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginEmailRequestImplCopyWith<_$LoginEmailRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
