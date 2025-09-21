// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseResponseImpl _$$CourseResponseImplFromJson(Map<String, dynamic> json) =>
    _$CourseResponseImpl(
      isSuccess: json['isSuccess'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Course.fromJson(e as Map<String, dynamic>))
          .toList(),
      statusCode: (json['statusCode'] as num).toInt(),
    );

Map<String, dynamic> _$$CourseResponseImplToJson(
        _$CourseResponseImpl instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'message': instance.message,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };
