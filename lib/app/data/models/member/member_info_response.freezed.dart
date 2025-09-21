// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MemberInfoResponse _$MemberInfoResponseFromJson(Map<String, dynamic> json) {
  return _MemberInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$MemberInfoResponse {
  bool get isSuccess => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  MemberInfoData get data => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberInfoResponseCopyWith<MemberInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberInfoResponseCopyWith<$Res> {
  factory $MemberInfoResponseCopyWith(
          MemberInfoResponse value, $Res Function(MemberInfoResponse) then) =
      _$MemberInfoResponseCopyWithImpl<$Res, MemberInfoResponse>;
  @useResult
  $Res call(
      {bool isSuccess, String message, MemberInfoData data, int statusCode});

  $MemberInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class _$MemberInfoResponseCopyWithImpl<$Res, $Val extends MemberInfoResponse>
    implements $MemberInfoResponseCopyWith<$Res> {
  _$MemberInfoResponseCopyWithImpl(this._value, this._then);

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
              as MemberInfoData,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MemberInfoDataCopyWith<$Res> get data {
    return $MemberInfoDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemberInfoResponseImplCopyWith<$Res>
    implements $MemberInfoResponseCopyWith<$Res> {
  factory _$$MemberInfoResponseImplCopyWith(_$MemberInfoResponseImpl value,
          $Res Function(_$MemberInfoResponseImpl) then) =
      __$$MemberInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSuccess, String message, MemberInfoData data, int statusCode});

  @override
  $MemberInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$MemberInfoResponseImplCopyWithImpl<$Res>
    extends _$MemberInfoResponseCopyWithImpl<$Res, _$MemberInfoResponseImpl>
    implements _$$MemberInfoResponseImplCopyWith<$Res> {
  __$$MemberInfoResponseImplCopyWithImpl(_$MemberInfoResponseImpl _value,
      $Res Function(_$MemberInfoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? message = null,
    Object? data = null,
    Object? statusCode = null,
  }) {
    return _then(_$MemberInfoResponseImpl(
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
              as MemberInfoData,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberInfoResponseImpl implements _MemberInfoResponse {
  const _$MemberInfoResponseImpl(
      {required this.isSuccess,
      required this.message,
      required this.data,
      required this.statusCode});

  factory _$MemberInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberInfoResponseImplFromJson(json);

  @override
  final bool isSuccess;
  @override
  final String message;
  @override
  final MemberInfoData data;
  @override
  final int statusCode;

  @override
  String toString() {
    return 'MemberInfoResponse(isSuccess: $isSuccess, message: $message, data: $data, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberInfoResponseImpl &&
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
  _$$MemberInfoResponseImplCopyWith<_$MemberInfoResponseImpl> get copyWith =>
      __$$MemberInfoResponseImplCopyWithImpl<_$MemberInfoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _MemberInfoResponse implements MemberInfoResponse {
  const factory _MemberInfoResponse(
      {required final bool isSuccess,
      required final String message,
      required final MemberInfoData data,
      required final int statusCode}) = _$MemberInfoResponseImpl;

  factory _MemberInfoResponse.fromJson(Map<String, dynamic> json) =
      _$MemberInfoResponseImpl.fromJson;

  @override
  bool get isSuccess;
  @override
  String get message;
  @override
  MemberInfoData get data;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$MemberInfoResponseImplCopyWith<_$MemberInfoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MemberInfoData _$MemberInfoDataFromJson(Map<String, dynamic> json) {
  return _MemberInfoData.fromJson(json);
}

/// @nodoc
mixin _$MemberInfoData {
  int get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  int? get memberId => throw _privateConstructorUsedError;
  String? get memberFullName => throw _privateConstructorUsedError;
  int? get memberCourseId => throw _privateConstructorUsedError;
  int? get courseId => throw _privateConstructorUsedError;
  String? get courseTitle => throw _privateConstructorUsedError;
  String? get bookInstanceCode => throw _privateConstructorUsedError;
  bool? get hasRedeemedBook => throw _privateConstructorUsedError;
  double? get courseProgress => throw _privateConstructorUsedError;
  MemberModel? get member => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberInfoDataCopyWith<MemberInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberInfoDataCopyWith<$Res> {
  factory $MemberInfoDataCopyWith(
          MemberInfoData value, $Res Function(MemberInfoData) then) =
      _$MemberInfoDataCopyWithImpl<$Res, MemberInfoData>;
  @useResult
  $Res call(
      {int userId,
      String userName,
      int? memberId,
      String? memberFullName,
      int? memberCourseId,
      int? courseId,
      String? courseTitle,
      String? bookInstanceCode,
      bool? hasRedeemedBook,
      double? courseProgress,
      MemberModel? member});

  $MemberModelCopyWith<$Res>? get member;
}

/// @nodoc
class _$MemberInfoDataCopyWithImpl<$Res, $Val extends MemberInfoData>
    implements $MemberInfoDataCopyWith<$Res> {
  _$MemberInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userName = null,
    Object? memberId = freezed,
    Object? memberFullName = freezed,
    Object? memberCourseId = freezed,
    Object? courseId = freezed,
    Object? courseTitle = freezed,
    Object? bookInstanceCode = freezed,
    Object? hasRedeemedBook = freezed,
    Object? courseProgress = freezed,
    Object? member = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      memberId: freezed == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int?,
      memberFullName: freezed == memberFullName
          ? _value.memberFullName
          : memberFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      memberCourseId: freezed == memberCourseId
          ? _value.memberCourseId
          : memberCourseId // ignore: cast_nullable_to_non_nullable
              as int?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int?,
      courseTitle: freezed == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      bookInstanceCode: freezed == bookInstanceCode
          ? _value.bookInstanceCode
          : bookInstanceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      hasRedeemedBook: freezed == hasRedeemedBook
          ? _value.hasRedeemedBook
          : hasRedeemedBook // ignore: cast_nullable_to_non_nullable
              as bool?,
      courseProgress: freezed == courseProgress
          ? _value.courseProgress
          : courseProgress // ignore: cast_nullable_to_non_nullable
              as double?,
      member: freezed == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as MemberModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MemberModelCopyWith<$Res>? get member {
    if (_value.member == null) {
      return null;
    }

    return $MemberModelCopyWith<$Res>(_value.member!, (value) {
      return _then(_value.copyWith(member: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemberInfoDataImplCopyWith<$Res>
    implements $MemberInfoDataCopyWith<$Res> {
  factory _$$MemberInfoDataImplCopyWith(_$MemberInfoDataImpl value,
          $Res Function(_$MemberInfoDataImpl) then) =
      __$$MemberInfoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int userId,
      String userName,
      int? memberId,
      String? memberFullName,
      int? memberCourseId,
      int? courseId,
      String? courseTitle,
      String? bookInstanceCode,
      bool? hasRedeemedBook,
      double? courseProgress,
      MemberModel? member});

  @override
  $MemberModelCopyWith<$Res>? get member;
}

/// @nodoc
class __$$MemberInfoDataImplCopyWithImpl<$Res>
    extends _$MemberInfoDataCopyWithImpl<$Res, _$MemberInfoDataImpl>
    implements _$$MemberInfoDataImplCopyWith<$Res> {
  __$$MemberInfoDataImplCopyWithImpl(
      _$MemberInfoDataImpl _value, $Res Function(_$MemberInfoDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userName = null,
    Object? memberId = freezed,
    Object? memberFullName = freezed,
    Object? memberCourseId = freezed,
    Object? courseId = freezed,
    Object? courseTitle = freezed,
    Object? bookInstanceCode = freezed,
    Object? hasRedeemedBook = freezed,
    Object? courseProgress = freezed,
    Object? member = freezed,
  }) {
    return _then(_$MemberInfoDataImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      memberId: freezed == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int?,
      memberFullName: freezed == memberFullName
          ? _value.memberFullName
          : memberFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      memberCourseId: freezed == memberCourseId
          ? _value.memberCourseId
          : memberCourseId // ignore: cast_nullable_to_non_nullable
              as int?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int?,
      courseTitle: freezed == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      bookInstanceCode: freezed == bookInstanceCode
          ? _value.bookInstanceCode
          : bookInstanceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      hasRedeemedBook: freezed == hasRedeemedBook
          ? _value.hasRedeemedBook
          : hasRedeemedBook // ignore: cast_nullable_to_non_nullable
              as bool?,
      courseProgress: freezed == courseProgress
          ? _value.courseProgress
          : courseProgress // ignore: cast_nullable_to_non_nullable
              as double?,
      member: freezed == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as MemberModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberInfoDataImpl implements _MemberInfoData {
  const _$MemberInfoDataImpl(
      {required this.userId,
      required this.userName,
      this.memberId,
      this.memberFullName,
      this.memberCourseId,
      this.courseId,
      this.courseTitle,
      this.bookInstanceCode,
      this.hasRedeemedBook,
      this.courseProgress,
      this.member});

  factory _$MemberInfoDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberInfoDataImplFromJson(json);

  @override
  final int userId;
  @override
  final String userName;
  @override
  final int? memberId;
  @override
  final String? memberFullName;
  @override
  final int? memberCourseId;
  @override
  final int? courseId;
  @override
  final String? courseTitle;
  @override
  final String? bookInstanceCode;
  @override
  final bool? hasRedeemedBook;
  @override
  final double? courseProgress;
  @override
  final MemberModel? member;

  @override
  String toString() {
    return 'MemberInfoData(userId: $userId, userName: $userName, memberId: $memberId, memberFullName: $memberFullName, memberCourseId: $memberCourseId, courseId: $courseId, courseTitle: $courseTitle, bookInstanceCode: $bookInstanceCode, hasRedeemedBook: $hasRedeemedBook, courseProgress: $courseProgress, member: $member)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberInfoDataImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.memberFullName, memberFullName) ||
                other.memberFullName == memberFullName) &&
            (identical(other.memberCourseId, memberCourseId) ||
                other.memberCourseId == memberCourseId) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.bookInstanceCode, bookInstanceCode) ||
                other.bookInstanceCode == bookInstanceCode) &&
            (identical(other.hasRedeemedBook, hasRedeemedBook) ||
                other.hasRedeemedBook == hasRedeemedBook) &&
            (identical(other.courseProgress, courseProgress) ||
                other.courseProgress == courseProgress) &&
            (identical(other.member, member) || other.member == member));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      userName,
      memberId,
      memberFullName,
      memberCourseId,
      courseId,
      courseTitle,
      bookInstanceCode,
      hasRedeemedBook,
      courseProgress,
      member);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberInfoDataImplCopyWith<_$MemberInfoDataImpl> get copyWith =>
      __$$MemberInfoDataImplCopyWithImpl<_$MemberInfoDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberInfoDataImplToJson(
      this,
    );
  }
}

abstract class _MemberInfoData implements MemberInfoData {
  const factory _MemberInfoData(
      {required final int userId,
      required final String userName,
      final int? memberId,
      final String? memberFullName,
      final int? memberCourseId,
      final int? courseId,
      final String? courseTitle,
      final String? bookInstanceCode,
      final bool? hasRedeemedBook,
      final double? courseProgress,
      final MemberModel? member}) = _$MemberInfoDataImpl;

  factory _MemberInfoData.fromJson(Map<String, dynamic> json) =
      _$MemberInfoDataImpl.fromJson;

  @override
  int get userId;
  @override
  String get userName;
  @override
  int? get memberId;
  @override
  String? get memberFullName;
  @override
  int? get memberCourseId;
  @override
  int? get courseId;
  @override
  String? get courseTitle;
  @override
  String? get bookInstanceCode;
  @override
  bool? get hasRedeemedBook;
  @override
  double? get courseProgress;
  @override
  MemberModel? get member;
  @override
  @JsonKey(ignore: true)
  _$$MemberInfoDataImplCopyWith<_$MemberInfoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MemberModel _$MemberModelFromJson(Map<String, dynamic> json) {
  return _MemberModel.fromJson(json);
}

/// @nodoc
mixin _$MemberModel {
  String get fullName => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError;
  String get dob => throw _privateConstructorUsedError;
  String get nationality => throw _privateConstructorUsedError;
  String get jobTitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberModelCopyWith<MemberModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberModelCopyWith<$Res> {
  factory $MemberModelCopyWith(
          MemberModel value, $Res Function(MemberModel) then) =
      _$MemberModelCopyWithImpl<$Res, MemberModel>;
  @useResult
  $Res call(
      {String fullName,
      String? avatarUrl,
      int gender,
      String dob,
      String nationality,
      String jobTitle});
}

/// @nodoc
class _$MemberModelCopyWithImpl<$Res, $Val extends MemberModel>
    implements $MemberModelCopyWith<$Res> {
  _$MemberModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? avatarUrl = freezed,
    Object? gender = null,
    Object? dob = null,
    Object? nationality = null,
    Object? jobTitle = null,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      nationality: null == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String,
      jobTitle: null == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberModelImplCopyWith<$Res>
    implements $MemberModelCopyWith<$Res> {
  factory _$$MemberModelImplCopyWith(
          _$MemberModelImpl value, $Res Function(_$MemberModelImpl) then) =
      __$$MemberModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fullName,
      String? avatarUrl,
      int gender,
      String dob,
      String nationality,
      String jobTitle});
}

/// @nodoc
class __$$MemberModelImplCopyWithImpl<$Res>
    extends _$MemberModelCopyWithImpl<$Res, _$MemberModelImpl>
    implements _$$MemberModelImplCopyWith<$Res> {
  __$$MemberModelImplCopyWithImpl(
      _$MemberModelImpl _value, $Res Function(_$MemberModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? avatarUrl = freezed,
    Object? gender = null,
    Object? dob = null,
    Object? nationality = null,
    Object? jobTitle = null,
  }) {
    return _then(_$MemberModelImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      nationality: null == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String,
      jobTitle: null == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberModelImpl implements _MemberModel {
  const _$MemberModelImpl(
      {required this.fullName,
      this.avatarUrl,
      required this.gender,
      required this.dob,
      required this.nationality,
      required this.jobTitle});

  factory _$MemberModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberModelImplFromJson(json);

  @override
  final String fullName;
  @override
  final String? avatarUrl;
  @override
  final int gender;
  @override
  final String dob;
  @override
  final String nationality;
  @override
  final String jobTitle;

  @override
  String toString() {
    return 'MemberModel(fullName: $fullName, avatarUrl: $avatarUrl, gender: $gender, dob: $dob, nationality: $nationality, jobTitle: $jobTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberModelImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, fullName, avatarUrl, gender, dob, nationality, jobTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberModelImplCopyWith<_$MemberModelImpl> get copyWith =>
      __$$MemberModelImplCopyWithImpl<_$MemberModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberModelImplToJson(
      this,
    );
  }
}

abstract class _MemberModel implements MemberModel {
  const factory _MemberModel(
      {required final String fullName,
      final String? avatarUrl,
      required final int gender,
      required final String dob,
      required final String nationality,
      required final String jobTitle}) = _$MemberModelImpl;

  factory _MemberModel.fromJson(Map<String, dynamic> json) =
      _$MemberModelImpl.fromJson;

  @override
  String get fullName;
  @override
  String? get avatarUrl;
  @override
  int get gender;
  @override
  String get dob;
  @override
  String get nationality;
  @override
  String get jobTitle;
  @override
  @JsonKey(ignore: true)
  _$$MemberModelImplCopyWith<_$MemberModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
