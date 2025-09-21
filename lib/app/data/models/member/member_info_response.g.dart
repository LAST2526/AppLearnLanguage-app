// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberInfoResponseImpl _$$MemberInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MemberInfoResponseImpl(
      isSuccess: json['isSuccess'] as bool,
      message: json['message'] as String,
      data: MemberInfoData.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: (json['statusCode'] as num).toInt(),
    );

Map<String, dynamic> _$$MemberInfoResponseImplToJson(
        _$MemberInfoResponseImpl instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'message': instance.message,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

_$MemberInfoDataImpl _$$MemberInfoDataImplFromJson(Map<String, dynamic> json) =>
    _$MemberInfoDataImpl(
      userId: (json['userId'] as num).toInt(),
      userName: json['userName'] as String,
      memberId: (json['memberId'] as num?)?.toInt(),
      memberFullName: json['memberFullName'] as String?,
      memberCourseId: (json['memberCourseId'] as num?)?.toInt(),
      courseId: (json['courseId'] as num?)?.toInt(),
      courseTitle: json['courseTitle'] as String?,
      bookInstanceCode: json['bookInstanceCode'] as String?,
      hasRedeemedBook: json['hasRedeemedBook'] as bool?,
      courseProgress: (json['courseProgress'] as num?)?.toDouble(),
      member: json['member'] == null
          ? null
          : MemberModel.fromJson(json['member'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MemberInfoDataImplToJson(
        _$MemberInfoDataImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'memberId': instance.memberId,
      'memberFullName': instance.memberFullName,
      'memberCourseId': instance.memberCourseId,
      'courseId': instance.courseId,
      'courseTitle': instance.courseTitle,
      'bookInstanceCode': instance.bookInstanceCode,
      'hasRedeemedBook': instance.hasRedeemedBook,
      'courseProgress': instance.courseProgress,
      'member': instance.member,
    };

_$MemberModelImpl _$$MemberModelImplFromJson(Map<String, dynamic> json) =>
    _$MemberModelImpl(
      fullName: json['fullName'] as String,
      avatarUrl: json['avatarUrl'] as String?,
      gender: (json['gender'] as num).toInt(),
      dob: json['dob'] as String,
      nationality: json['nationality'] as String,
      jobTitle: json['jobTitle'] as String,
    );

Map<String, dynamic> _$$MemberModelImplToJson(_$MemberModelImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'avatarUrl': instance.avatarUrl,
      'gender': instance.gender,
      'dob': instance.dob,
      'nationality': instance.nationality,
      'jobTitle': instance.jobTitle,
    };
