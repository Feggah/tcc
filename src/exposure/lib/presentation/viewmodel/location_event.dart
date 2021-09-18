part of 'location_bloc.dart';

@freezed
abstract class LocationEvent with _$LocationEvent {
  const factory LocationEvent.loadHomeScreen() = _LoadHomeScreen;
  const factory LocationEvent.refresh() = _Refresh;
}
