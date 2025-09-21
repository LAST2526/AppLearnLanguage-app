import 'dart:io';

import 'package:last02/app/data/models/listen_practice/lession_api_response.dart';
import 'package:last02/app/data/models/member/change_password/change_password_api_response.dart';
import 'package:last02/app/data/models/member/member_info_response.dart';
import 'package:last02/app/data/models/member/update_profile/update_profile_api_response.dart';
import 'package:last02/app/data/models/member/update_profile/update_profile_request.dart';
import 'package:last02/app/data/models/member/upload_avatar/upload_avatar_response.dart';
import 'package:last02/app/data/models/topic/topic_response.dart';

abstract class UserRepository {
  Future<TopicResponse> getTopicsByCourseId(int courseId);

  Future<MemberInfoResponse> getMemberInfo();
  Future<ChangePasswordApiResponse> changePassword(
      String oldPassword, String newPassword);
  Future<UpdateProfileApiResponse> updateProfile(
      UpdateProfileRequest requestBody, int userId);
  Future<UploadAvatarResponse> uploadAvatar(File file);
  Future<LessionApiResponse> getListGrammaByCourseId(
      int courseId, int? pageNumber);
  Future<LessionApiResponse> getListKaiwaByCourseId(
      int courseId, int? pageNumber);
}
