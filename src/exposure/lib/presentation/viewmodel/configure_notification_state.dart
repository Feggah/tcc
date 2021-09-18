part of 'configure_notification_bloc.dart';

@freezed
class ConfigureNotificationState with _$ConfigureNotificationState {
  const factory ConfigureNotificationState.initial() = _Initial;
  const factory ConfigureNotificationState.failed(Failure failure) = _Failed;
  const factory ConfigureNotificationState.configured() = _Configured;
  const factory ConfigureNotificationState.notConfigured() = _NotConfigured;
}
