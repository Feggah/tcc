import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:exposure/domain/entities/location.dart';
import 'package:exposure/domain/usecases/get_location.dart';
import 'package:exposure/shared/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'details_event.dart';
part 'details_state.dart';
part 'details_bloc.freezed.dart';

@injectable
class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  final GetLocation getLocation;

  DetailsBloc({
    required this.getLocation,
  }) : super(const DetailsState.loading());

  @override
  Stream<DetailsState> mapEventToState(
    DetailsEvent event,
  ) async* {
    yield* event.map(
      loadDetails: (e) async* {
        final failureOrLocation = await getLocation(Params(id: e.id));
        yield failureOrLocation.fold(
          (failure) => DetailsState.loadFailure(failure),
          (location) => DetailsState.loaded(location),
        );
      },
    );
  }
}
