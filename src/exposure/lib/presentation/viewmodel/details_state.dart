part of 'details_bloc.dart';

@freezed
abstract class DetailsState with _$DetailsState {
  const factory DetailsState.loading() = _Loading;
  const factory DetailsState.loaded(Location location) = _Loaded;
  const factory DetailsState.loadFailure(Failure failure) = _LoadFailure;
  const factory DetailsState.locationSaved() = _LocationSaved;
}
