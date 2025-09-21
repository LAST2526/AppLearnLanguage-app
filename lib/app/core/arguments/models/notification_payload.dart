import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'dart:convert';

part 'notification_payload.freezed.dart';
part 'notification_payload.g.dart';

@freezed
class NotificationPayload with _$NotificationPayload {
  const factory NotificationPayload({
    required String title,
    required String body,
    required bool canInterest,
    required int userId,
    required int notificationId,
    required String documentId,
  }) = _NotificationPayload;

  factory NotificationPayload.fromRemoteMessage(RemoteMessage message) {
    final notification = message.notification;
    final data = message.data;

    return NotificationPayload(
      title: notification?.title ?? '',
      body: notification?.body ?? '',
      canInterest: data['canInterest'].toString().toLowerCase() == 'true',
      userId: int.tryParse(data['userId']?.toString() ?? '') ?? 0,
      notificationId:
          int.tryParse(data['notificationId']?.toString() ?? '') ?? 0,
      documentId: data['documentId']?.toString() ?? '',
    );
  }

  factory NotificationPayload.fromPayloadString(String payload) {
    final Map<String, dynamic> map = jsonDecode(payload);
    return NotificationPayload(
      title: map['title'] ?? '',
      body: map['body'] ?? '',
      canInterest: map['canInterest'].toString().toLowerCase() == 'true',
      userId: int.tryParse(map['userId']?.toString() ?? '') ?? 0,
      notificationId:
          int.tryParse(map['notificationId']?.toString() ?? '') ?? 0,
      documentId: map['documentId']?.toString() ?? '',
    );
  }

  factory NotificationPayload.fromJson(Map<String, dynamic> json) =>
      _$NotificationPayloadFromJson(json);
}
