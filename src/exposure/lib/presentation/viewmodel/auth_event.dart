part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAuthentication() = _AuthCheckRequested;
  const factory AuthEvent.authenticate() = _Authenticate;
}
