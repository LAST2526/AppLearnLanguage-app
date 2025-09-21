import 'dart:io';

import 'package:dio/dio.dart';
import 'package:last02/app/core/base/base_remote_source.dart';
import 'package:last02/app/data/models/listen_practice/lession_api_response.dart';
import 'package:last02/app/data/models/member/change_password/change_password_api_response.dart';
import 'package:last02/app/data/models/member/member_info_response.dart';
import 'package:last02/app/data/models/member/update_profile/update_profile_api_response.dart';
import 'package:last02/app/data/models/member/update_profile/update_profile_request.dart';
import 'package:last02/app/data/models/member/upload_avatar/upload_avatar_response.dart';
import 'package:last02/app/data/models/topic/topic_response.dart';
import 'package:last02/app/data/remotes/user_remote_data_source.dart';
import 'package:last02/app/network/dio_provider.dart';
import 'package:path/path.dart' as path;

class UserRemoteDataSourceImpl extends BaseRemoteSource
    implements UserRemoteDataSource {
  @override
  Future<TopicResponse> getTopicsByCourseId(int courseId) async {
    final endpoint = "${DioProvider.baseUrl}/api/Topic/by-course-id/$courseId";
    final dioCall = dioClient.get(endpoint);

    try {
      final response = await callApiWithErrorParser(dioCall);
      return TopicResponse.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<MemberInfoResponse> getMemberInfo() {
    final endpoint = "${DioProvider.baseUrl}/api/Auth/me";
    final dioCall = dioClient.get(endpoint);

    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => MemberInfoResponse.fromJson(response.data));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ChangePasswordApiResponse> changePassword(
      String oldPassword, String newPassword) {
    final endpoint = "${DioProvider.baseUrl}/api/User/change-password";
    final dioCall = dioClient.post(endpoint,
        data: {"oldPassword": oldPassword, "newPassword": newPassword});

    try {
      return callApiWithErrorParser(dioCall).then(
          (response) => ChangePasswordApiResponse.fromJson(response.data));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UpdateProfileApiResponse> updateProfile(
      UpdateProfileRequest requestBody, int userId) {
    final endpoint = "${DioProvider.baseUrl}/api/User/update/$userId";
    final dioCall = dioClient.put(endpoint, data: requestBody.toJson());

    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => UpdateProfileApiResponse.fromJson(response.data));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UploadAvatarResponse> uploadAvatar(File file) async {
    final endpoint = "${DioProvider.baseUrl}/api/User/update-avatar";
    final fileName = path.basename(file.path.split('/').last);
    final formData = FormData.fromMap({
      'AvatarImage':
          await MultipartFile.fromFile(file.path, filename: fileName),
    });
    final dioCall = dioClient.put(endpoint,
        data: formData,
        options: Options(
          headers: {
            'Content-Type': 'multipart/form-data',
          },
        ));
    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => UploadAvatarResponse.fromJson(response.data));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<LessionApiResponse> getListGrammaByCourseId(
      int courseId, int? pageNumber) {
    final endpoint =
        "${DioProvider.baseUrl}/api/Grammar/by-course-id/$courseId?pageNumber=$pageNumber";
    final dioCall = dioClient.get(endpoint);

    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => LessionApiResponse.fromJson(response.data));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<LessionApiResponse> getListKaiwaByCourseId(
      int courseId, int? pageNumber) {
    final endpoint =
        "${DioProvider.baseUrl}/api/Conversation/by-course-id/$courseId?pageNumber=$pageNumber";
    final dioCall = dioClient.get(endpoint);

    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => LessionApiResponse.fromJson(response.data));
    } catch (e) {
      rethrow;
    }
  }
}
