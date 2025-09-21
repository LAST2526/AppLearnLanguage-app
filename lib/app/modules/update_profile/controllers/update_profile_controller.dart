import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:last02/app/core/arguments/models/update_profile_arguments.dart';
import 'package:last02/app/core/base/base_controller.dart';
import 'package:last02/app/core/utils/helpers.dart';
import 'package:last02/app/core/values/enum_values.dart';
import 'package:last02/app/data/local/preference/preference_manager.dart';
import 'package:last02/app/data/models/course/course.dart';
import 'package:last02/app/data/models/member/update_profile/update_profile_request.dart';
import 'package:last02/app/data/repositories/user_repository.dart';
import 'package:last02/app/modules/auth/controllers/register_controller.dart';
import 'package:last02/app/modules/home/controllers/home_controller.dart';
import 'package:last02/app/modules/profile/controllers/profile_controller.dart';
import 'package:last02/app/routes/app_pages.dart';

class UpdateProfileController extends BaseController {
  late final UserRepository _userRepository;

  late final RegisterController _registerController =
      Get.find<RegisterController>();

  final PreferenceManager preferenceManager =
      Get.find<PreferenceManager>(tag: (PreferenceManager).toString());

  // Text controllers
  final email = TextEditingController();
  final fullName = TextEditingController();
  final nationality = TextEditingController();

  //Rxn variables
  final birthdate = Rxn<DateTime>();
  final selectedGender = Rxn<Gender>();
  final courseId = RxnInt();
  final userId = RxnInt();
  final course = Rxn<String>();
  final avatarUrl = Rxn<String>();
  final pickedImage = Rxn<File>();
  final ImagePicker _picker = ImagePicker();

  final birthdateError = ''.obs;
  final courseList = <Course>[].obs;

  // Focus Nodes
  final nameFocusNode = FocusNode();
  final countryFocusNode = FocusNode();

  List<Gender> get genders => Gender.values;

  final isCourseReadOnly = true.obs;

  @override
  void onInit() {
    super.onInit();
    _userRepository =
        Get.find<UserRepository>(tag: (UserRepository).toString());
    _getArguments();
    _registerController.getAllCourses();
    _loadCourses();
  }

  void _loadCourses() async {
    await _registerController.getAllCourses();
    courseList.value = _registerController.courseList;
    if (courseId.value != null) {
      final selectedCourse =
          courseList.firstWhereOrNull((c) => c.id == courseId.value);
      course.value = selectedCourse?.title;
    } else {
      final exists = courseList.firstWhereOrNull(
        (c) => c.title == course.value,
      );
      if (exists == null) {
        course.value = '';
      }
    }
  }

  void handleSubmit() {
    final updateProfileRequest = _getUpdateProfileRequest();
    callDataService(
      _userRepository.updateProfile(updateProfileRequest, userId.value!),
      onSuccess: (res) async {
        if (res.isSuccess) {
          await Future.delayed(const Duration(milliseconds: 300));
          final homeController = Get.find<HomeController>();
          await homeController.updateCourseId();
          Get.until((route) => Get.currentRoute == Routes.MAIN);
        }
      },
    );
  }

  UpdateProfileRequest _getUpdateProfileRequest() {
    final existsCourse = courseList.firstWhereOrNull(
      (c) => c.title == course.value,
    );

    return UpdateProfileRequest(
      name: fullName.text.trim(),
      nationality: nationality.text.trim(),
      courseId: existsCourse?.id ?? 0,
      gender: selectedGender.value?.getValueGender() ?? 0,
      dob: Helpers.formatSendDate(birthdate.value),
    );
  }

  void _getArguments() {
    final args = Get.arguments;
    if (args is UpdateProfileInfoArguments) {
      userId.value = args.userId ?? 0;
      email.text = args.email ?? '';
      fullName.text = args.fullName ?? '';
      avatarUrl.value = args.avatarUrl ?? '';
      nationality.text = args.nationality ?? '';
      if (args.dob?.isNotEmpty == true) {
        birthdate.value = DateTime.tryParse(args.dob!);
      }
      if (args.gender != null) {
        selectedGender.value = Gender.genderFromInt(args.gender);
      }
      courseId.value = args.courseId ?? 0;
    }
  }

  Future<String> handleUploadAvatar(File file) async {
    await callDataService(_userRepository.uploadAvatar(file),
        onSuccess: (response) {
      if (response.isSuccess) {
        return response.data.avatarUrl;
      }
    });
    return '';
  }

  Future<void> processPickedImage(File imageFile) async {
    pickedImage.value = imageFile;
    final uploadUrl = await handleUploadAvatar(imageFile);
    final profileController = Get.find<ProfileController>();
    profileController.fetchMemberInfo();
    if (uploadUrl.isNotEmpty) {
      avatarUrl.value = uploadUrl;
    }
  }

  Future<void> pickImageFromGallery() async {
    try {
      final XFile? file = await _picker.pickImage(source: ImageSource.gallery);
      if (file != null) {
        await processPickedImage(File(file.path));
      }
    } catch (e) {
      Get.snackbar('Error', 'Can not choose picture: $e');
    }
  }

  Future<void> pickImageFromCamera() async {
    try {
      final XFile? file = await _picker.pickImage(source: ImageSource.camera);
      if (file != null) {
        await processPickedImage(File(file.path));
      }
    } catch (e) {
      Get.snackbar('Error', 'Can not take picture: $e');
    }
  }

  @override
  void onClose() {
    email.dispose();
    fullName.dispose();
    nationality.dispose();
    super.onClose();
  }
}
