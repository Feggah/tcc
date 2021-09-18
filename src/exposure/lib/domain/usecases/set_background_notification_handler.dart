import 'package:dartz/dartz.dart';
import 'package:exposure/domain/repositories/i_notification_repository.dart';
import 'package:exposure/shared/usecase.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SetBackgroundNotificationHandler implements UseCase<Unit, NoParams> {
  final INotificationRepository repository;

  SetBackgroundNotificationHandler(this.repository);

  @override
  Unit call(NoParams params) {
    return repository.registerBackgroundNotificationHandler();
  }
}
