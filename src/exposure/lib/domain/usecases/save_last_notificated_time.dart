import 'package:dartz/dartz.dart';
import 'package:exposure/domain/repositories/i_notification_repository.dart';
import 'package:exposure/shared/failures.dart';
import 'package:exposure/shared/usecase.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SaveLastNotificatedTime implements UseCase<Future, NoParams> {
  final INotificationRepository repository;

  SaveLastNotificatedTime(this.repository);

  @override
  Future<Either<Failure, Unit>> call(NoParams params) async {
    return repository.saveLastNotificatedTime();
  }
}
