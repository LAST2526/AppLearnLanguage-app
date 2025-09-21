import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_info_response.freezed.dart';
part 'member_info_response.g.dart';

@freezed
class MemberInfoResponse with _$MemberInfoResponse {
  const factory MemberInfoResponse({
    required bool isSuccess,
    required String message,
    required MemberInfoData data,
    required int statusCode,
  }) = _MemberInfoResponse;

  factory MemberInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$MemberInfoResponseFromJson(json);
}

@freezed
class MemberInfoData with _$MemberInfoData {
  const factory MemberInfoData({
    required int userId,
    required String userName,
    int? memberId,
    String? memberFullName,
    int? memberCourseId,
    int? courseId,
    String? courseTitle,
    String? bookInstanceCode,
    bool? hasRedeemedBook,
    double? courseProgress,
    MemberModel? member,
  }) = _MemberInfoData;

  factory MemberInfoData.fromJson(Map<String, dynamic> json) =>
      _$MemberInfoDataFromJson(json);
}

@freezed
class MemberModel with _$MemberModel {
  const factory MemberModel({
    required String fullName,
    String? avatarUrl,
    required int gender,
    required String dob,
    required String nationality,
    required String jobTitle,
  }) = _MemberModel;

  factory MemberModel.fromJson(Map<String, dynamic> json) =>
      _$MemberModelFromJson(json);
}
