import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last02/app/bindings/initial_binding.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:last02/app/routes/app_pages.dart';
import 'package:last02/l10n/app_localizations.dart';

import '/flavors/build_config.dart';
import '/flavors/env_config.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final EnvConfig _envConfig = BuildConfig.instance.config;
  @override
  void initState() {
    super.initState();
    // FlutterNativeSplash.remove();
    // _setupFcmForegroundListener();
  }

  // void _setupFcmForegroundListener() {
  //   FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  //     RemoteNotification? notification = message.notification;
  //     final payload = NotificationPayload.fromRemoteMessage(message);
  //     if (notification != null) {
  //       flutterLocalNotificationsPlugin.show(
  //         notification.hashCode,
  //         notification.title,
  //         notification.body,
  //         const NotificationDetails(
  //           android: AndroidNotificationDetails(
  //             'default_channel_id',
  //             'Thông báo chung',
  //             channelDescription: 'Kênh thông báo mặc định',
  //             importance: Importance.max,
  //             priority: Priority.high,
  //           ),
  //           iOS: DarwinNotificationDetails(),
  //         ),
  //         payload: jsonEncode(payload.toJson()),
  //       );
  //     }
  //   });

  //   FirebaseMessaging.onMessageOpenedApp.listen(_handleRouteNotify);
  // }

  // void _handleRouteNotify(RemoteMessage message) {
  //   final isLogined = Get.find<AuthService>().isAuthenticated.value;
  //   if (!isLogined) {
  //     return;
  //   }
  //   final payload = NotificationPayload.fromRemoteMessage(message);
  //   Get.toNamed(
  //     Routes.LIST_NOTIFICATION,
  //     arguments: {
  //       'navigateToDetail': true,
  //       'payload': payload,
  //       'userId': payload.userId
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: Get.key,
      title: _envConfig.appName,
      initialRoute: AppPages.INITIAL,
      initialBinding: InitialBinding(),
      getPages: AppPages.routes,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: _getSupportedLocal(),
      locale: Get.locale ?? const Locale('vi', ''),
      fallbackLocale: const Locale('vi', ''),
      theme: ThemeData(
        primarySwatch: AppColors.colorPrimarySwatch,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light,
        primaryColor: AppColors.colorPrimary,
        textTheme: const TextTheme(
          labelLarge: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        fontFamily: 'Roboto',
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  List<Locale> _getSupportedLocal() {
    return [
      const Locale('ja', ''),
      const Locale('vi', ''),
      const Locale('en', ''),
    ];
  }
}
