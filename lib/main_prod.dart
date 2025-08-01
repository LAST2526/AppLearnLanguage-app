import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:last02/app/bindings/local_source_bindings.dart';
import 'package:last02/app/my_app.dart';
import 'package:last02/app/routes/auth_service.dart';
import 'package:last02/flavors/build_config.dart';
import 'package:last02/flavors/env_config.dart';
import 'package:last02/flavors/environment.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // Get.put<PreferenceManager>(PreferenceManagerImpl());
  // await getFcmToken();
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  // await FirebaseMessaging.instance.requestPermission(
  //   alert: true,
  //   badge: true,
  //   sound: true,
  // );
  // _initLocalNotification();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  EnvConfig devConfig = EnvConfig(
    appName: "Last02",
    baseUrl: "https://localhost:44368",
    shouldCollectCrashLog: true,
  );

  BuildConfig.instantiate(
    envType: Environment.PRODUCTION,
    envConfig: devConfig,
  );

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  LocalSourceBindings().dependencies();
  await Get.putAsync(() => AuthService().init());

  runApp(const MyApp());
}
