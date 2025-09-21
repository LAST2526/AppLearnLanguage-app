// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForgotPasswordResponseImpl _$$ForgotPasswordResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ForgotPasswordResponseImpl(
      isSuccess: json['isSuccess'] as bool,
      message: json['message'] as String,
      data: SentData.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: (json['statusCode'] as num).toInt(),
    );

Map<String, dynamic> _$$ForgotPasswordResponseImplToJson(
        _$ForgotPasswordResponseImpl instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'message': instance.message,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

_$SentDataImpl _$$SentDataImplFromJson(Map<String, dynamic> json) =>
    _$SentDataImpl(
      isSent: json['isSent'] as bool,
    );

Map<String, dynamic> _$$SentDataImplToJson(_$SentDataImpl instance) =>
    <String, dynamic>{
      'isSent': instance.isSent,
    };
