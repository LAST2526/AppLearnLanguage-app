// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_email_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginEmailResponseImpl _$$LoginEmailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginEmailResponseImpl(
      isSuccess: json['isSuccess'] as bool,
      message: json['message'] as String,
      data: LoginEmailData.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: (json['statusCode'] as num).toInt(),
    );

Map<String, dynamic> _$$LoginEmailResponseImplToJson(
        _$LoginEmailResponseImpl instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'message': instance.message,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

_$LoginEmailDataImpl _$$LoginEmailDataImplFromJson(Map<String, dynamic> json) =>
    _$LoginEmailDataImpl(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      userName: json['userName'] as String,
      mail: json['mail'] as String,
      isExist: json['isExist'] as bool,
    );

Map<String, dynamic> _$$LoginEmailDataImplToJson(
        _$LoginEmailDataImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'userName': instance.userName,
      'mail': instance.mail,
      'isExist': instance.isExist,
    };
