import 'package:freezed_annotation/freezed_annotation.dart';

part 'lession_arguments.freezed.dart';

@freezed
class LessionArguments with _$LessionArguments {
  const factory LessionArguments({
    required bool isGramma,
    int? courseId,
  }) = _LessionArguments;
}
