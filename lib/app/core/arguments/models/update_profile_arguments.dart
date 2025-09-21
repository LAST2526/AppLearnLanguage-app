import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile_arguments.freezed.dart';

@freezed
class UpdateProfileInfoArguments with _$UpdateProfileInfoArguments {
  const factory UpdateProfileInfoArguments({
    int? userId,
    String? email,
    String? fullName,
    String? avatarUrl,
    int? gender,
    String? dob,
    String? nationality,
    String? language,
    int? courseId,
  }) = _UpdateProfileInfoArguments;
}
