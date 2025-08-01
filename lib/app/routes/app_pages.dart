import 'package:flutter/material.dart';
import 'package:last02/app/modules/auth/bindings/login_binding.dart';
import 'package:last02/app/modules/auth/views/login_view.dart';
import 'package:last02/app/modules/main/bindings/main_binding.dart';
import 'package:last02/app/modules/main/views/main_view.dart';
import 'package:last02/app/routes/auth_service.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();
  static const INITIAL = Routes.LOGIN;
  static final routes = [
    // GetPage(
    //   name: _Paths.REGISTER,
    //   page: () => RegisterView(),
    //   binding: RegisterBinding(),
    // ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    // GetPage(
    //   name: _Paths.FORGOT_PASSWORD,
    //   page: () => ForgotPasswordView(),
    //   binding: ForgotPasswordBinding(),
    // ),
    // GetPage(
    //   name: _Paths.CHANGE_PASSWORD,
    //   page: () => ChangePasswordView(),
    //   binding: ChangePasswordBinding(),
    // ),
    // GetPage(
    //   name: _Paths.BASIC_INFO,
    //   page: () => BasicInfoView(),
    //   binding: BasicInfoBinding(),
    // ),
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
    // GetPage(
    //   name: _Paths.FLASH_CARD,
    //   page: () => FlashCardView(),
    //   binding: FlashCardBinding(),
    // ),
    // GetPage(
    //   name: _Paths.PROFILE,
    //   page: () => ProfileView(),
    //   binding: ProfileBinding(),
    // ),
    // GetPage(
    //   name: _Paths.GRAMMA,
    //   page: () => GrammaView(),
    //   binding: GrammaBinding(),
    // ),
    // GetPage(
    //   name: _Paths.UPDATE_PROFILE,
    //   page: () => UpdateProfileView(),
    //   binding: UpdateProfileBinding(),
    // ),
    // GetPage(
    //   name: _Paths.LIST_NOTIFICATION,
    //   page: () => ListNotificationView(),
    //   binding: ListNotificationBinding(),
    // ),
    // GetPage(
    //   name: _Paths.NOTIFICATION_DETAIL,
    //   page: () => NotificationDetailView(),
    //   binding: NotificationDetailBinding(),
    // ),
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
