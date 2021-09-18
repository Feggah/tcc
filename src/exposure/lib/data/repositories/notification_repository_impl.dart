import 'package:dartz/dartz.dart';
import 'package:exposure/data/datasources/i_firebase_datasource.dart';
import 'package:exposure/domain/entities/notification.dart';
import 'package:exposure/domain/repositories/i_notification_repository.dart';
import 'package:exposure/shared/exceptions.dart';
import 'package:exposure/shared/failures.dart';
import 'package:exposure/shared/network_info.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: INotificationRepository)
class NotificationRepositoryImpl implements INotificationRepository {
  final IFirebaseDataSource firebaseDataSource;
  final NetworkInfo networkInfo;

  NotificationRepositoryImpl({
    required this.firebaseDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, Unit>> setupNotifications() async {
    if (await networkInfo.isConnected) {
      try {
        await firebaseDataSource.saveUserToken();
        final permission = await getPermission();
        if (permission.contains("notDetermined")) {
          await firebaseDataSource.requestPermission();
        }
        return const Right(unit);
      } on ServerException {
        return const Left(Failure.internalError());
      }
    } else {
      return const Left(Failure.noInternetConnection());
    }
  }

  @override
  Future<Either<Failure, Unit>> checkConfiguration() async {
    if (await networkInfo.isConnected) {
      try {
        final isAvailable = await firebaseDataSource.checkUserTokenExists();
        final permission = await getPermission();
        if (!isAvailable || permission.contains("notDetermined")) {
          return const Left(Failure.internalError());
        }
        return const Right(unit);
      } on ServerException {
        return const Left(Failure.internalError());
      }
    } else {
      return const Left(Failure.noInternetConnection());
    }
  }

  @override
  Unit registerBackgroundNotificationHandler() {
    firebaseDataSource.setupBackgroundNotification();
    return unit;
  }

  @override
  PushNotification createNotification(String title, String body) {
    return PushNotification(title: title, body: body);
  }

  @override
  Future<Either<Failure, Unit>> saveLastNotificatedTime() async {
    if (await networkInfo.isConnected) {
      try {
        return Right(await firebaseDataSource.saveLastNotificatedTime());
      } on ServerException {
        return const Left(Failure.internalError());
      }
    } else {
      return const Left(Failure.noInternetConnection());
    }
  }

  @override
  Future<String> getPermission() async {
    return firebaseDataSource.getPermission();
  }
}
