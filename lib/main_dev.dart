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

Future<void> getFcmToken() async {
  final messaging = FirebaseMessaging.instance;

  final settings = await messaging.requestPermission();
  if (settings.authorizationStatus != AuthorizationStatus.authorized) {
    print('Người dùng từ chối quyền nhận thông báo');
    return;
  }

  // (iOS) Đợi APNS token sẵn sàng
  if (Platform.isIOS) {
    String? apnsToken;
    int retry = 0;
    while (apnsToken == null && retry < 5) {
      apnsToken = await messaging.getAPNSToken();
      if (apnsToken == null) {
        await Future.delayed(Duration(seconds: 1));
        retry++;
      }
    }

    if (apnsToken == null) {
      return;
    }
  }

  String? fcmToken = await messaging.getToken();
  print("FCM Token: $fcmToken");
  if (fcmToken != null) {
    final preferenceManager = Get.find<PreferenceManager>();
    await preferenceManager.setString('fcmToken', fcmToken);
  }
}

void main() async {
  await dotenv.load(fileName: ".env");
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put<PreferenceManager>(PreferenceManagerImpl());
  await getFcmToken();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await FirebaseMessaging.instance.requestPermission(
    alert: true,
    badge: true,
    sound: true,
  );
  _initLocalNotification();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  final baseUrl =
      dotenv.env['BASE_URL_LOCAL'] ?? dotenv.env['BASE_URL_REMOTE'] ?? '';
  EnvConfig devConfig = EnvConfig(
    appName: "Last02",
    baseUrl: baseUrl,
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
