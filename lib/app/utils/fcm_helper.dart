import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:last02/app/data/local/preference/preference_manager.dart';
import 'package:get/get.dart';

class FcmHelper {
  static Future<bool> initializeFcmToken({int maxRetries = 3}) async {
    int retryCount = 0;

    while (retryCount < maxRetries) {
      try {
        final messaging = FirebaseMessaging.instance;

        // Request permission
        final settings = await messaging.requestPermission(
          alert: true,
          badge: true,
          sound: true,
          provisional: false,
        );

        if (settings.authorizationStatus != AuthorizationStatus.authorized) {
          return false;
        }

        // iOS: Wait for APNS token
        if (Platform.isIOS) {
          String? apnsToken;
          int apnsRetry = 0;
          while (apnsToken == null && apnsRetry < 5) {
            apnsToken = await messaging.getAPNSToken();
            if (apnsToken == null) {
              await Future.delayed(Duration(seconds: 1));
              apnsRetry++;
            }
          }

          if (apnsToken == null) {
            return false;
          }
        }

        // Get FCM token
        String? fcmToken = await messaging.getToken();

        if (fcmToken != null && fcmToken.isNotEmpty) {
          // Save token
          if (Get.isRegistered<PreferenceManager>()) {
            final preferenceManager = Get.find<PreferenceManager>();
            await preferenceManager.setString('fcmToken', fcmToken);
          }

          return true;
        } else {
          retryCount++;
        }
      } catch (e) {
        retryCount++;

        if (retryCount < maxRetries) {
          final delaySeconds = retryCount * 2;
          await Future.delayed(Duration(seconds: delaySeconds));
        }
      }
    }

    return false;
  }

  static Future<void> refreshFcmToken() async {
    try {
      await FirebaseMessaging.instance.deleteToken();
      await Future.delayed(Duration(seconds: 1));
      await initializeFcmToken(maxRetries: 2);
    } catch (e) {
      print(' Lỗi khi refresh FCM Token: $e');
    }
  }

  static Future<String?> getCurrentToken() async {
    try {
      // Try to get from local storage first
      if (Get.isRegistered<PreferenceManager>()) {
        final preferenceManager = Get.find<PreferenceManager>();
        final savedToken =
            await preferenceManager.getString('fcmToken', defaultValue: '');
        if (savedToken.isNotEmpty) {
          return savedToken;
        }
      }

      // If not in storage, get from Firebase
      final token = await FirebaseMessaging.instance.getToken();
      return token;
    } catch (e) {
      return null;
    }
  }
}
