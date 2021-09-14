part of 'infected_bloc.dart';

@freezed
abstract class InfectedState with _$InfectedState {
  const factory InfectedState.loading() = _Loading;
  const factory InfectedState.saved() = _Saved;
  const factory InfectedState.loadFailure(Failure failure) = _LoadFailure;
}
