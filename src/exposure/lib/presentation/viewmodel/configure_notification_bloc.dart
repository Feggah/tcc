import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:exposure/domain/usecases/check_configuration.dart';
import 'package:exposure/domain/usecases/configure_notifications.dart';
import 'package:exposure/shared/failures.dart';
import 'package:exposure/shared/usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'configure_notification_event.dart';
part 'configure_notification_state.dart';
part 'configure_notification_bloc.freezed.dart';

@injectable
class ConfigureNotificationBloc
    extends Bloc<ConfigureNotificationEvent, ConfigureNotificationState> {
  final ConfigureNotifications configureNotifications;
  final CheckConfiguration checkConfiguration;

  ConfigureNotificationBloc({
    required this.configureNotifications,
    required this.checkConfiguration,
  }) : super(const ConfigureNotificationState.initial());

  @override
  Stream<ConfigureNotificationState> mapEventToState(
    ConfigureNotificationEvent event,
  ) async* {
    yield* event.map(
      configure: (e) async* {
        final failureOrUnit = await configureNotifications(NoParams());
        yield failureOrUnit.fold(
          (failure) => ConfigureNotificationState.failed(failure),
          (_) => const ConfigureNotificationState.configured(),
        );
      },
      checkConfiguration: (e) async* {
        final failureOrUnit = await checkConfiguration(NoParams());
        yield failureOrUnit.fold(
          (_) => const ConfigureNotificationState.notConfigured(),
          (_) => const ConfigureNotificationState.configured(),
        );
      },
    );
  }
}
