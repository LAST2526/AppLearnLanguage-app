// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lession_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessionApiResponseImpl _$$LessionApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LessionApiResponseImpl(
      isSuccess: json['isSuccess'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => LessionData.fromJson(e as Map<String, dynamic>))
          .toList(),
      statusCode: (json['statusCode'] as num).toInt(),
    );

Map<String, dynamic> _$$LessionApiResponseImplToJson(
        _$LessionApiResponseImpl instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'message': instance.message,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

_$LessionDataImpl _$$LessionDataImplFromJson(Map<String, dynamic> json) =>
    _$LessionDataImpl(
      id: (json['id'] as num).toInt(),
      audioCode: json['audioCode'] as String,
      audioType: (json['audioType'] as num).toInt(),
      title: json['title'] as String,
      fileUrl: json['fileUrl'] as String,
      sortOrder: (json['sortOrder'] as num).toInt(),
      isFree: json['isFree'] as bool,
      script: json['script'] as String,
      scriptEn: json['scriptEn'] as String?,
      scriptVi: json['scriptVi'] as String?,
      courseId: (json['courseId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LessionDataImplToJson(_$LessionDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'audioCode': instance.audioCode,
      'audioType': instance.audioType,
      'title': instance.title,
      'fileUrl': instance.fileUrl,
      'sortOrder': instance.sortOrder,
      'isFree': instance.isFree,
      'script': instance.script,
      'scriptEn': instance.scriptEn,
      'scriptVi': instance.scriptVi,
      'courseId': instance.courseId,
    };
