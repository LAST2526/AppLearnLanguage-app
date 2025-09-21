// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateProfileApiResponseImpl _$$UpdateProfileApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateProfileApiResponseImpl(
      isSuccess: json['isSuccess'] as bool,
      message: json['message'] as String,
      statusCode: (json['statusCode'] as num).toInt(),
    );

Map<String, dynamic> _$$UpdateProfileApiResponseImplToJson(
        _$UpdateProfileApiResponseImpl instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };
