import 'package:freezed_annotation/freezed_annotation.dart';

part 'topic.freezed.dart';
part 'topic.g.dart';

@freezed
class Topic with _$Topic {
  const factory Topic({
    required int id,
    required String topicCode,
    required String title,
    required String description,
    required bool isFree,
    required String hexColorCode,
    required int courseId,
    @JsonKey(name: 'completedFlashcardCnt')
    @Default(0)
    int completedFlashcardcnt,
    @JsonKey(name: 'flashcardCnt') @Default(0) int flashcardCnt,
  }) = _Topic;

  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);
}
