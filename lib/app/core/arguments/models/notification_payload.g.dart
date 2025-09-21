// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationPayloadImpl _$$NotificationPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationPayloadImpl(
      title: json['title'] as String,
      body: json['body'] as String,
      canInterest: json['canInterest'] as bool,
      userId: (json['userId'] as num).toInt(),
      notificationId: (json['notificationId'] as num).toInt(),
      documentId: json['documentId'] as String,
    );

Map<String, dynamic> _$$NotificationPayloadImplToJson(
        _$NotificationPayloadImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'canInterest': instance.canInterest,
      'userId': instance.userId,
      'notificationId': instance.notificationId,
      'documentId': instance.documentId,
    };
