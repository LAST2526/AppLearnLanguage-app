// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangePasswordApiResponseImpl _$$ChangePasswordApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePasswordApiResponseImpl(
      isSuccess: json['isSuccess'] as bool,
      message: json['message'] as String,
      data: ChangePasswordData.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: (json['statusCode'] as num).toInt(),
    );

Map<String, dynamic> _$$ChangePasswordApiResponseImplToJson(
        _$ChangePasswordApiResponseImpl instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'message': instance.message,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

_$ChangePasswordDataImpl _$$ChangePasswordDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePasswordDataImpl(
      isChanged: json['isChanged'] as bool,
    );

Map<String, dynamic> _$$ChangePasswordDataImplToJson(
        _$ChangePasswordDataImpl instance) =>
    <String, dynamic>{
      'isChanged': instance.isChanged,
    };
