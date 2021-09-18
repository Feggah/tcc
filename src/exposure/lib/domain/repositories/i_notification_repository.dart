import 'package:dartz/dartz.dart';
import 'package:exposure/domain/entities/notification.dart';
import 'package:exposure/shared/failures.dart';

abstract class INotificationRepository {
  Future<Either<Failure, Unit>> setupNotifications();
  PushNotification createNotification(String title, String body);
  Future<Either<Failure, Unit>> saveLastNotificatedTime();
  Future<String> getPermission();
  Unit registerBackgroundNotificationHandler();
  Future<Either<Failure, Unit>> checkConfiguration();
}
