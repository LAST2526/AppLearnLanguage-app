import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:last02/app/data/models/course/course.dart';

part 'course_response.freezed.dart';
part 'course_response.g.dart';

@freezed
class CourseResponse with _$CourseResponse {
  const factory CourseResponse({
    required bool isSuccess,
    required String message,
    required List<Course> data,
    required int statusCode,
  }) = _CourseResponse;

  factory CourseResponse.fromJson(Map<String, dynamic> json) =>
      _$CourseResponseFromJson(json);
}
