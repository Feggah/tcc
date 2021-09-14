part of 'infected_bloc.dart';

@freezed
abstract class InfectedEvent with _$InfectedEvent {
  const factory InfectedEvent.saveInfectedLocations() = _SaveInfectedLocations;
}
