// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_status_flash_card_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateStatusFlashCardResponseImpl
    _$$UpdateStatusFlashCardResponseImplFromJson(Map<String, dynamic> json) =>
        _$UpdateStatusFlashCardResponseImpl(
          isSuccess: json['isSuccess'] as bool,
          message: json['message'] as String,
          data: UpdatedData.fromJson(json['data'] as Map<String, dynamic>),
          statusCode: (json['statusCode'] as num).toInt(),
        );

Map<String, dynamic> _$$UpdateStatusFlashCardResponseImplToJson(
        _$UpdateStatusFlashCardResponseImpl instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'message': instance.message,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

_$UpdatedDataImpl _$$UpdatedDataImplFromJson(Map<String, dynamic> json) =>
    _$UpdatedDataImpl(
      id: (json['id'] as num).toInt(),
      memberId: (json['memberId'] as num).toInt(),
      flashcardId: (json['flashcardId'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      lastReviewedAt: DateTime.parse(json['lastReviewedAt'] as String),
    );

Map<String, dynamic> _$$UpdatedDataImplToJson(_$UpdatedDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'memberId': instance.memberId,
      'flashcardId': instance.flashcardId,
      'status': instance.status,
      'lastReviewedAt': instance.lastReviewedAt.toIso8601String(),
    };
