import 'package:flutter/material.dart';
import 'package:last02/app/modules/auth/bindings/login_binding.dart';
import 'package:last02/app/modules/auth/bindings/register_binding.dart';
import 'package:last02/app/modules/auth/views/login_view.dart';
import 'package:last02/app/modules/auth/views/register_view.dart';
import 'package:last02/app/modules/basic_info/bindings/basic_info_binding.dart';
import 'package:last02/app/modules/basic_info/views/basic_info_view.dart';
import 'package:last02/app/modules/change_password/bindings/change_password_binding.dart';
import 'package:last02/app/modules/change_password/views/change_password_view.dart';
import 'package:last02/app/modules/flash_card/bindings/flash_card_binding.dart';
import 'package:last02/app/modules/flash_card/views/flash_card_view.dart';
import 'package:last02/app/modules/forgot_password/bindings/forgot_password_binding.dart';
import 'package:last02/app/modules/forgot_password/views/forgot_password_view.dart';
import 'package:last02/app/modules/listen_practice/bindings/listen_practice_binding.dart';
import 'package:last02/app/modules/listen_practice/views/listen_practice_view.dart';
import 'package:last02/app/modules/main/bindings/main_binding.dart';
import 'package:last02/app/modules/main/views/main_view.dart';
import 'package:last02/app/modules/profile/bindings/profile_binding.dart';
import 'package:last02/app/modules/profile/views/profile_view.dart';
import 'package:last02/app/modules/update_profile/bindings/update_profile_binding.dart';
import 'package:last02/app/modules/update_profile/views/update_profile_view.dart';
import 'package:last02/app/routes/auth_service.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();
  static const INITIAL = Routes.MAIN;
  static final routes = [
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD,
      page: () => ChangePasswordView(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.BASIC_INFO,
      page: () => BasicInfoView(),
      binding: BasicInfoBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => MainView(),
      binding: MainBinding(),
      middlewares: [AuthMiddleware()],
    ),
    // GetPage(
    //   name: _Paths.HOME,
    //   page: () => HomeView(),
    // ),
    GetPage(
      name: _Paths.FLASH_CARD,
      page: () => FlashCardView(),
      binding: FlashCardBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.LISTEN_PRACTICE,
      page: () => ListenPracticeView(),
      binding: ListenPracticeBinding(),
    ),
    GetPage(
      name: _Paths.UPDATE_PROFILE,
      page: () => UpdateProfileView(),
      binding: UpdateProfileBinding(),
    ),
  ];
}

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final isLogined = Get.find<AuthService>().isAuthenticated.value;
    if (!isLogined) {
      return const RouteSettings(name: Routes.LOGIN);
    }

    return null;
  }
}
