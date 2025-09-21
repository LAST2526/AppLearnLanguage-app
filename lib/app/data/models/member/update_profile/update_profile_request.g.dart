// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateProfileRequestImpl _$$UpdateProfileRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateProfileRequestImpl(
      name: json['name'] as String,
      gender: (json['gender'] as num).toInt(),
      dob: json['dob'] as String,
      nationality: json['nationality'] as String,
      courseId: (json['courseId'] as num).toInt(),
    );

Map<String, dynamic> _$$UpdateProfileRequestImplToJson(
        _$UpdateProfileRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'gender': instance.gender,
      'dob': instance.dob,
      'nationality': instance.nationality,
      'courseId': instance.courseId,
    };
