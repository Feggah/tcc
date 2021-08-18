import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:exposure/domain/entities/location.dart';
import 'package:exposure/domain/usecases/list_location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:exposure/shared/failures.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

@injectable
class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final ListLocation listLocation;

  LocationBloc({
    required this.listLocation,
  }) : super(const LocationState.empty());

  @override
  Stream<LocationState> mapEventToState(
    LocationEvent event,
  ) async* {
    yield* event.map(
      loadHomeScreen: (e) async* {
        yield const LocationState.loading();
        final failureOrLocations = await listLocation();
        yield failureOrLocations.fold(
          (failure) => LocationState.loadFailure(failure),
          (locations) {
            if (locations.isNotEmpty) {
              return LocationState.loaded(locations);
            }
            return const LocationState.empty();
          },
        );
      },
    );
  }
}
