import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'details_check_in_event.dart';
part 'details_check_in_state.dart';
part 'details_check_in_bloc.freezed.dart';

@injectable
class DetailsCheckInBloc
    extends Bloc<DetailsCheckInEvent, DetailsCheckInState> {
  final String initialDate = "Selecione o dia da visita";
  final String initialTime = "Selecione o horário de entrada e saída";
  DetailsCheckInBloc() : super(DetailsCheckInState.initial());

  @override
  Stream<DetailsCheckInState> mapEventToState(
    DetailsCheckInEvent event,
  ) async* {
    yield* event.map(
      timePicked: (e) async* {
        final bool checkInCompleted = state.dateUi != initialDate;
        final List<int> timestampList = transformToTimestamp(
          time: e.time,
          date: state.dateUi,
          transform: checkInCompleted,
        );
        yield state.copyWith(
          timeUi: e.time,
          enableSaveButton: checkInCompleted,
          arrival: timestampList[0],
          departure: timestampList[1],
        );
      },
      datePicked: (e) async* {
        final bool checkInCompleted = state.timeUi != initialTime;
        final List<int> timestampList = transformToTimestamp(
          time: state.timeUi,
          date: e.date,
          transform: checkInCompleted,
        );
        yield state.copyWith(
          dateUi: e.date,
          enableSaveButton: checkInCompleted,
          arrival: timestampList[0],
          departure: timestampList[1],
        );
      },
    );
  }

  List<int> transformToTimestamp(
      {required String time, required String date, required bool transform}) {
    if (!transform) {
      return [0, 0];
    }
    final List<int> response = [];
    final List<int> checkInDate = date
        .split(
          "/",
        )
        .map(int.parse)
        .toList();

    time.split(' até ').forEach((arrivalOrDeparture) {
      final List<int> hourAndMinutes = arrivalOrDeparture
          .split(
            ':',
          )
          .map(int.parse)
          .toList();
      response.add(
        DateTime(
          checkInDate[2],
          checkInDate[1],
          checkInDate[0],
          hourAndMinutes[0],
          hourAndMinutes[1],
        ).millisecondsSinceEpoch,
      );
    });
    return response;
  }
}
