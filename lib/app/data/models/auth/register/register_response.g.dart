// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterResponseImpl _$$RegisterResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterResponseImpl(
      isSuccess: json['isSuccess'] as bool,
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : RegisterData.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: (json['statusCode'] as num).toInt(),
    );

Map<String, dynamic> _$$RegisterResponseImplToJson(
        _$RegisterResponseImpl instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'message': instance.message,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

_$RegisterDataImpl _$$RegisterDataImplFromJson(Map<String, dynamic> json) =>
    _$RegisterDataImpl(
      id: (json['id'] as num).toInt(),
      userName: json['userName'] as String,
      isExist: json['isExist'] as bool,
      isActive: json['isActive'] as bool,
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$RegisterDataImplToJson(_$RegisterDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'isExist': instance.isExist,
      'isActive': instance.isActive,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };

_$MemberDataImpl _$$MemberDataImplFromJson(Map<String, dynamic> json) =>
    _$MemberDataImpl(
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$$MemberDataImplToJson(_$MemberDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
