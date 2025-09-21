import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:last02/app/data/models/topic/topic.dart';

part 'topic_response.freezed.dart';
part 'topic_response.g.dart';

@freezed
class TopicResponse with _$TopicResponse {
  const factory TopicResponse({
    required bool isSuccess,
    required String message,
    required List<Topic> data,
    required int statusCode,
  }) = _TopicResponse;

  factory TopicResponse.fromJson(Map<String, dynamic> json) =>
      _$TopicResponseFromJson(json);
}
