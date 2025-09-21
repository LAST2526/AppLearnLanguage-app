// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flash_card_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlashCardApiResponseImpl _$$FlashCardApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FlashCardApiResponseImpl(
      isSuccess: json['isSuccess'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => FlashCardData.fromJson(e as Map<String, dynamic>))
          .toList(),
      statusCode: (json['statusCode'] as num).toInt(),
    );

Map<String, dynamic> _$$FlashCardApiResponseImplToJson(
        _$FlashCardApiResponseImpl instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'message': instance.message,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

_$FlashCardDataImpl _$$FlashCardDataImplFromJson(Map<String, dynamic> json) =>
    _$FlashCardDataImpl(
      id: (json['id'] as num).toInt(),
      flashcardCode: json['flashcardCode'] as String,
      front: json['front'] as String,
      furigana: json['furigana'] as String,
      imageUrl: json['imageUrl'] as String,
      meaningVi: json['meaningVi'] as String,
      meaningEn: json['meaningEn'] as String,
      example: json['example'] as String,
      exampleVi: json['exampleVi'] as String,
      exampleEn: json['exampleEn'] as String,
      count: (json['count'] as num?)?.toInt() ?? 0,
      status: (json['status'] as num?)?.toInt() ?? 0,
      topicId: (json['topicId'] as num).toInt(),
    );

Map<String, dynamic> _$$FlashCardDataImplToJson(_$FlashCardDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'flashcardCode': instance.flashcardCode,
      'front': instance.front,
      'furigana': instance.furigana,
      'imageUrl': instance.imageUrl,
      'meaningVi': instance.meaningVi,
      'meaningEn': instance.meaningEn,
      'example': instance.example,
      'exampleVi': instance.exampleVi,
      'exampleEn': instance.exampleEn,
      'count': instance.count,
      'status': instance.status,
      'topicId': instance.topicId,
    };
