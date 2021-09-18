part of 'details_check_in_bloc.dart';

@freezed
abstract class DetailsCheckInState with _$DetailsCheckInState {
  const factory DetailsCheckInState({
    required String dateUi,
    required String timeUi,
    required bool enableSaveButton,
    required int arrival,
    required int departure,
  }) = _DetailsCheckInState;

  factory DetailsCheckInState.initial() => const DetailsCheckInState(
        dateUi: "Selecione o dia da visita",
        timeUi: "Selecione o horário de entrada e saída",
        enableSaveButton: false,
        arrival: 0,
        departure: 0,
      );
}
