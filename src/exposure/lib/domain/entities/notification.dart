import 'package:equatable/equatable.dart';

class PushNotification extends Equatable {
  final String title;
  final String body;

  const PushNotification({
    required this.title,
    required this.body,
  });

  @override
  List<Object> get props => [
        title,
        body,
      ];
}
