// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterRequestImpl _$$RegisterRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterRequestImpl(
      email: json['email'] as String?,
      password: json['password'] as String?,
      gender: (json['gender'] as num).toInt(),
      dob: json['dob'] as String,
      userName: json['userName'] as String,
      name: json['name'] as String,
      nationality: json['nationality'] as String,
      courseId: (json['courseId'] as num).toInt(),
      provider: (json['provider'] as num).toInt(),
    );

Map<String, dynamic> _$$RegisterRequestImplToJson(
        _$RegisterRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'gender': instance.gender,
      'dob': instance.dob,
      'userName': instance.userName,
      'name': instance.name,
      'nationality': instance.nationality,
      'courseId': instance.courseId,
      'provider': instance.provider,
    };
