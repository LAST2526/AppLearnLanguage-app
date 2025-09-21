// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_avatar_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadAvatarResponseImpl _$$UploadAvatarResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadAvatarResponseImpl(
      isSuccess: json['isSuccess'] as bool,
      message: json['message'] as String,
      data: UrlData.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: (json['statusCode'] as num).toInt(),
    );

Map<String, dynamic> _$$UploadAvatarResponseImplToJson(
        _$UploadAvatarResponseImpl instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'message': instance.message,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

_$UrlDataImpl _$$UrlDataImplFromJson(Map<String, dynamic> json) =>
    _$UrlDataImpl(
      avatarUrl: json['avatarUrl'] as String,
    );

Map<String, dynamic> _$$UrlDataImplToJson(_$UrlDataImpl instance) =>
    <String, dynamic>{
      'avatarUrl': instance.avatarUrl,
    };
