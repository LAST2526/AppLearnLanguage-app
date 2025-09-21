import 'dart:io';

import 'package:get/get.dart';
import 'package:last02/app/data/models/listen_practice/lession_api_response.dart';
import 'package:last02/app/data/models/member/change_password/change_password_api_response.dart';
import 'package:last02/app/data/models/member/member_info_response.dart';
import 'package:last02/app/data/models/member/update_profile/update_profile_api_response.dart';
import 'package:last02/app/data/models/member/update_profile/update_profile_request.dart';
import 'package:last02/app/data/models/member/upload_avatar/upload_avatar_response.dart';
import 'package:last02/app/data/models/topic/topic_response.dart';
import 'package:last02/app/data/remotes/user_remote_data_source.dart';
import 'package:last02/app/data/repositories/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final UserRemoteDataSource _remoteDataSource =
      Get.find<UserRemoteDataSource>(tag: (UserRemoteDataSource).toString());

  @override
  Future<TopicResponse> getTopicsByCourseId(int courseId) {
    return _remoteDataSource.getTopicsByCourseId(courseId);
  }

  @override
  Future<MemberInfoResponse> getMemberInfo() {
    return _remoteDataSource.getMemberInfo();
  }

  @override
  Future<ChangePasswordApiResponse> changePassword(
      String oldPassword, String newPassword) {
    return _remoteDataSource.changePassword(oldPassword, newPassword);
  }

  @override
  Future<UpdateProfileApiResponse> updateProfile(
      UpdateProfileRequest requestBody, int userId) {
    return _remoteDataSource.updateProfile(requestBody, userId);
  }

  @override
  Future<UploadAvatarResponse> uploadAvatar(File file) {
    return _remoteDataSource.uploadAvatar(file);
  }

  @override
  Future<LessionApiResponse> getListGrammaByCourseId(
      int courseId, int? pageNumber) {
    return _remoteDataSource.getListGrammaByCourseId(courseId, pageNumber);
  }

  @override
  Future<LessionApiResponse> getListKaiwaByCourseId(
      int courseId, int? pageNumber) {
    return _remoteDataSource.getListKaiwaByCourseId(courseId, pageNumber);
  }
}
