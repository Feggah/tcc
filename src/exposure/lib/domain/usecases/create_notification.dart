import 'package:equatable/equatable.dart';
import 'package:exposure/domain/entities/notification.dart';
import 'package:exposure/domain/repositories/i_notification_repository.dart';
import 'package:exposure/shared/usecase.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class CreateNotification implements UseCase<PushNotification, Params> {
  final INotificationRepository repository;

  CreateNotification(this.repository);

  @override
  PushNotification call(Params params) {
    return repository.createNotification(params.title, params.body);
  }
}

class Params extends Equatable {
  final String title;
  final String body;

  const Params({
    required this.title,
    required this.body,
  });

  @override
  List<Object> get props => [title, body];
}
