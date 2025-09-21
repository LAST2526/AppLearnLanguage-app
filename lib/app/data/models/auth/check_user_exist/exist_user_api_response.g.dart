// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exist_user_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExistApiResponseImpl _$$ExistApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ExistApiResponseImpl(
      isSuccess: json['isSuccess'] as bool,
      message: json['message'] as String,
      data: ExistData.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: (json['statusCode'] as num).toInt(),
    );

Map<String, dynamic> _$$ExistApiResponseImplToJson(
        _$ExistApiResponseImpl instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'message': instance.message,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

_$ExistDataImpl _$$ExistDataImplFromJson(Map<String, dynamic> json) =>
    _$ExistDataImpl(
      isExist: json['isExist'] as bool,
    );

Map<String, dynamic> _$$ExistDataImplToJson(_$ExistDataImpl instance) =>
    <String, dynamic>{
      'isExist': instance.isExist,
    };
