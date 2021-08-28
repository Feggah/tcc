part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.notFound() = _NotFound;
  const factory SearchState.loading() = _Loading;
  const factory SearchState.loaded(List<LocationSearchItem> items) = _Loaded;
  const factory SearchState.loadFailure(Failure failure) = _LoadFailure;
}
