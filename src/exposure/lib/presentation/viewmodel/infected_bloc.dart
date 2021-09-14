import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:exposure/domain/usecases/save_infected.dart';
import 'package:exposure/shared/failures.dart';
import 'package:exposure/shared/usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'infected_event.dart';
part 'infected_state.dart';
part 'infected_bloc.freezed.dart';

@injectable
class InfectedBloc extends Bloc<InfectedEvent, InfectedState> {
  final SaveInfected saveInfected;

  InfectedBloc({
    required this.saveInfected,
  }) : super(const InfectedState.loading());

  @override
  Stream<InfectedState> mapEventToState(
    InfectedEvent event,
  ) async* {
    yield* event.map(
      saveInfectedLocations: (e) async* {
        final failureOrUnit = await saveInfected(NoParams());
        yield failureOrUnit.fold(
          (failure) => InfectedState.loadFailure(failure),
          (_) => const InfectedState.saved(),
        );
      },
    );
  }
}
