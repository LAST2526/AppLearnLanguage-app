import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:last02/app/bindings/local_source_bindings.dart';
import 'package:last02/app/core/arguments/models/notification_payload.dart';
import 'package:last02/app/data/local/preference/preference_manager.dart';
import 'package:last02/app/data/local/preference/preference_manager_impl.dart';
import 'package:last02/app/my_app.dart';
import 'package:last02/app/routes/app_pages.dart';
import 'package:last02/app/routes/auth_service.dart';
import 'package:last02/app/utils/fcm_helper.dart';
import 'package:last02/flavors/build_config.dart';
import 'package:last02/flavors/env_config.dart';
import 'package:last02/flavors/environment.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

Future<void> _initLocalNotification() async {
  const AndroidInitializationSettings androidSettings =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  const InitializationSettings initSettings = InitializationSettings(
    android: androidSettings,
    iOS: DarwinInitializationSettings(),
  );

  await flutterLocalNotificationsPlugin.initialize(initSettings,
      //Handle khi xử lý click thông báo khi app đang mở
      onDidReceiveNotificationResponse: (NotificationResponse response) {
    final isLogined = Get.find<AuthService>().isAuthenticated.value;

    if (!isLogined) {
      return;
    }
    if (response.payload != null) {
      final payload = NotificationPayload.fromPayloadString(response.payload!);
      Get.toNamed(
        Routes.LIST_NOTIFICATION,
        arguments: {
          'navigateToDetail': true,
          'payload': payload,
          'userId': payload.userId
        },
      );
    } else {
      Get.toNamed(Routes.LIST_NOTIFICATION);
    }
  });

  const DarwinInitializationSettings(
    requestAlertPermission: true,
    requestBadgePermission: true,
    requestSoundPermission: true,
  );
}

@Deprecated('Use FcmHelper.initializeFcmToken() instead')
Future<void> getFcmToken({int maxRetries = 3}) async {
  await FcmHelper.initializeFcmToken(maxRetries: maxRetries);
}

void main() async {
  await dotenv.load(fileName: ".env");
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();
    Get.put<PreferenceManager>(PreferenceManagerImpl());

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    await FirebaseMessaging.instance.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    _initLocalNotification();

    Future.delayed(Duration(seconds: 2), () {
      FcmHelper.initializeFcmToken(maxRetries: 3);
    });
  } catch (e) {
    print('Lỗi khởi tạo Firebase: $e');
    if (!Get.isRegistered<PreferenceManager>()) {
      Get.put<PreferenceManager>(PreferenceManagerImpl());
    }
  }
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  EnvConfig devConfig = EnvConfig(
    appName: "Last02",
    // baseUrl: "http://192.168.1.11:5149",
    // baseUrl: "http://10.0.2.2:5149",
    baseUrl: "http://api-last02.runasp.net",
    shouldCollectCrashLog: true,
  );

  BuildConfig.instantiate(
    envType: Environment.DEVELOPMENT,
    envConfig: devConfig,
  );

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  LocalSourceBindings().dependencies();
  await Get.putAsync(() => AuthService().init());

  runApp(const MyApp());
}
