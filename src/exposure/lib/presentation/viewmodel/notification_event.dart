part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.display(RemoteNotification? notification) =
      _Display;
  const factory NotificationEvent.saveLastSentTime() = _SaveLastSentTime;
  const factory NotificationEvent.watchNotifications() = _WatchNotifications;
}
