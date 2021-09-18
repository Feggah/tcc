part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = _Initial;
  const factory NotificationState.failed(Failure failure) = _Failed;
  const factory NotificationState.watch() = _Watch;
  const factory NotificationState.received(PushNotification notification) =
      _Received;
  const factory NotificationState.sent() = _Sent;
  const factory NotificationState.completed() = _Completed;
}
