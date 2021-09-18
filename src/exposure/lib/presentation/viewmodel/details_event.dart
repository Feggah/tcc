part of 'details_bloc.dart';

@freezed
abstract class DetailsEvent with _$DetailsEvent {
  const factory DetailsEvent.loadDetails(String id) = _LoadDetails;
  const factory DetailsEvent.saveLocation(Location location) = _SaveLocation;
}
