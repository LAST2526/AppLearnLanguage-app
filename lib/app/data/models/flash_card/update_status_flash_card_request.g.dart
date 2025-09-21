// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_status_flash_card_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateStatusFlashCardRequestImpl _$$UpdateStatusFlashCardRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateStatusFlashCardRequestImpl(
      flashcardId: (json['flashcardId'] as num).toInt(),
      action: (json['action'] as num).toInt(),
    );

Map<String, dynamic> _$$UpdateStatusFlashCardRequestImplToJson(
        _$UpdateStatusFlashCardRequestImpl instance) =>
    <String, dynamic>{
      'flashcardId': instance.flashcardId,
      'action': instance.action,
    };
