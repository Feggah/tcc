import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:exposure/domain/entities/location.dart';
import 'package:exposure/domain/usecases/get_location.dart' as get_location;
import 'package:exposure/domain/usecases/save_location.dart' as save_location;
import 'package:exposure/shared/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'details_event.dart';
part 'details_state.dart';
part 'details_bloc.freezed.dart';

@injectable
class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  final get_location.GetLocation getLocation;
  final save_location.SaveLocation saveLocation;

  DetailsBloc({
    required this.getLocation,
    required this.saveLocation,
  }) : super(const DetailsState.loading());

  @override
  Stream<DetailsState> mapEventToState(
    DetailsEvent event,
  ) async* {
    yield* event.map(
      loadDetails: (e) async* {
        final failureOrLocation = await getLocation(
          get_location.Params(id: e.id),
        );
        yield failureOrLocation.fold(
          (failure) => DetailsState.loadFailure(failure),
          (location) => DetailsState.loaded(location),
        );
      },
      saveLocation: (e) async* {
        yield const DetailsState.loading();
        final failureOrUnit = await saveLocation(
          save_location.Params(location: e.location),
        );
        yield failureOrUnit.fold(
          (failure) => DetailsState.loadFailure(failure),
          (_) => const DetailsState.locationSaved(),
        );
      },
    );
  }
}
