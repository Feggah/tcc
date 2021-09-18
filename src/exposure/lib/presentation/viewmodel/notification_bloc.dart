import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:exposure/domain/entities/notification.dart';
import 'package:exposure/domain/usecases/create_notification.dart';
import 'package:exposure/domain/usecases/get_notification_permission.dart';
import 'package:exposure/domain/usecases/save_last_notificated_time.dart';
import 'package:exposure/domain/usecases/set_background_notification_handler.dart';
import 'package:exposure/shared/failures.dart';
import 'package:exposure/shared/usecase.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

@injectable
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final CreateNotification createNotification;
  final SaveLastNotificatedTime saveLastNotifiedTime;
  final GetNotificationPermission getNotificationPermission;
  final SetBackgroundNotificationHandler setBackgroundNotificationHandler;

  NotificationBloc({
    required this.createNotification,
    required this.saveLastNotifiedTime,
    required this.getNotificationPermission,
    required this.setBackgroundNotificationHandler,
  }) : super(const NotificationState.initial());

  @override
  Stream<NotificationState> mapEventToState(
    NotificationEvent event,
  ) async* {
    yield* event.map(
      watchNotifications: (e) async* {
        final permission = await getNotificationPermission(NoParams());
        if (permission.contains("authorized")) {
          setBackgroundNotificationHandler(NoParams());
          yield const NotificationState.watch();
        } else {
          const NotificationState.completed();
        }
      },
      display: (e) async* {
        final notification = createNotification(Params(
          title: e.notification!.title!,
          body: e.notification!.body!,
        ));
        yield NotificationState.received(notification);
        yield const NotificationState.sent();
      },
      saveLastSentTime: (e) async* {
        final failureOrUnit = await saveLastNotifiedTime(NoParams());
        yield failureOrUnit.fold(
          (failure) => NotificationState.failed(failure),
          (_) => const NotificationState.completed(),
        );
      },
    );
  }
}
