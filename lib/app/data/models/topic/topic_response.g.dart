// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopicResponseImpl _$$TopicResponseImplFromJson(Map<String, dynamic> json) =>
    _$TopicResponseImpl(
      isSuccess: json['isSuccess'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Topic.fromJson(e as Map<String, dynamic>))
          .toList(),
      statusCode: (json['statusCode'] as num).toInt(),
    );

Map<String, dynamic> _$$TopicResponseImplToJson(_$TopicResponseImpl instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'message': instance.message,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };
