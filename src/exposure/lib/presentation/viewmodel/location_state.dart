part of 'location_bloc.dart';

@freezed
abstract class LocationState with _$LocationState {
  const factory LocationState.empty() = _Empty;
  const factory LocationState.loading() = _Loading;
  const factory LocationState.loaded(List<Location> locations) = _Loaded;
  const factory LocationState.loadFailure(Failure failure) = _LoadFailure;
}
