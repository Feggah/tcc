part of 'configure_notification_bloc.dart';

@freezed
class ConfigureNotificationEvent with _$ConfigureNotificationEvent {
  const factory ConfigureNotificationEvent.configure() = _Configure;
  const factory ConfigureNotificationEvent.checkConfiguration() =
      _CheckConfiguration;
}
