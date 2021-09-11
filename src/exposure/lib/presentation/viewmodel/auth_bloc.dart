import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:exposure/domain/repositories/i_auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository authRepository;

  AuthBloc({
    required this.authRepository,
  }) : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      checkAuthentication: (e) async* {
        final userOption = await authRepository.getSignedInUser();
        yield userOption.fold(
          () => const AuthState.unauthenticated(),
          (_) => const AuthState.authenticated(),
        );
      },
      authenticate: (e) async* {
        final failureOrUnit = await authRepository.signInAnonymously();
        yield failureOrUnit.fold(
          (failure) => const AuthState.internalError(),
          (_) => const AuthState.authenticated(),
        );
      },
    );
  }
}
