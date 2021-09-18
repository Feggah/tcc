import 'package:exposure/domain/repositories/i_notification_repository.dart';
import 'package:exposure/shared/usecase.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class GetNotificationPermission implements UseCase<Future, NoParams> {
  final INotificationRepository repository;

  GetNotificationPermission(this.repository);

  @override
  Future<String> call(NoParams params) async {
    return repository.getPermission();
  }
}
