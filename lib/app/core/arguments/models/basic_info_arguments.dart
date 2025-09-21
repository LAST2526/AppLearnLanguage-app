import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:last02/app/data/models/course/course.dart';

part 'basic_info_arguments.freezed.dart';

@freezed
class BasicInfoArguments with _$BasicInfoArguments {
  const factory BasicInfoArguments(
      {String? email,
      String? password,
      int? provider,
      String? userName,
      List<Course>? courses}) = _BasicInfoArguments;
}
