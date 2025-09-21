// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopicImpl _$$TopicImplFromJson(Map<String, dynamic> json) => _$TopicImpl(
      id: (json['id'] as num).toInt(),
      topicCode: json['topicCode'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      isFree: json['isFree'] as bool,
      hexColorCode: json['hexColorCode'] as String,
      courseId: (json['courseId'] as num).toInt(),
      completedFlashcardcnt:
          (json['completedFlashcardCnt'] as num?)?.toInt() ?? 0,
      flashcardCnt: (json['flashcardCnt'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$TopicImplToJson(_$TopicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'topicCode': instance.topicCode,
      'title': instance.title,
      'description': instance.description,
      'isFree': instance.isFree,
      'hexColorCode': instance.hexColorCode,
      'courseId': instance.courseId,
      'completedFlashcardCnt': instance.completedFlashcardcnt,
      'flashcardCnt': instance.flashcardCnt,
    };
