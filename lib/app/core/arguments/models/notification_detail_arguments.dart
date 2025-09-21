import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_detail_arguments.freezed.dart';

@freezed
class NotificationDetailArguments with _$NotificationDetailArguments {
  const factory NotificationDetailArguments(
      {int? userId,
      String? title,
      String? bodyContent,
      bool? canInterest,
      bool? isInterested,
      String? notiDetailId,
      int? notificationId}) = _NotificationDetailArguments;
}
