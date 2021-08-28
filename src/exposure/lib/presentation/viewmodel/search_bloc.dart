import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:exposure/domain/entities/location_search_item.dart';
import 'package:exposure/domain/usecases/search_location.dart';
import 'package:exposure/shared/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchLocation searchLocation;

  SearchBloc({
    required this.searchLocation,
  }) : super(const SearchState.initial());

  @override
  Stream<SearchState> mapEventToState(
    SearchEvent event,
  ) async* {
    yield* event.map(
      textChanged: (e) async* {
        yield const SearchState.loading();
        final failureOrItems = await searchLocation(Params(name: e.text));
        yield failureOrItems.fold(
          (failure) => SearchState.loadFailure(failure),
          (items) {
            if (e.text.isEmpty) {
              return const SearchState.initial();
            }
            if (items.isEmpty) {
              return const SearchState.notFound();
            }
            return SearchState.loaded(items);
          },
        );
      },
    );
  }
}
