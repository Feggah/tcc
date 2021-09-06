import 'package:exposure/presentation/viewmodel/details_check_in_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late DetailsCheckInBloc bloc;
  setUp(() {
    bloc = DetailsCheckInBloc();
  });

  test('init state should be Initial', () {
    expect(bloc.state, equals(DetailsCheckInState.initial()));
  });

  group("timePicked", () {
    test("should emit only time when date isn't filled", () async {
      const expected = [
        DetailsCheckInState(
          dateUi: "Selecione o dia da visita",
          timeUi: "test",
          enableSaveButton: false,
          arrival: 0,
          departure: 0,
        )
      ];
      expectLater(bloc.stream, emitsInOrder(expected));
      bloc.add(const DetailsCheckInEvent.timePicked("test"));
    });

    test("should enable button when date is filled", () async {
      const expected = [
        DetailsCheckInState(
          dateUi: "06/09/2021",
          timeUi: "Selecione o horário de entrada e saída",
          enableSaveButton: false,
          arrival: 0,
          departure: 0,
        ),
        DetailsCheckInState(
          dateUi: "06/09/2021",
          timeUi: "10:32 até 10:32",
          enableSaveButton: true,
          arrival: 1630935120000,
          departure: 1630935120000,
        )
      ];
      expectLater(bloc.stream, emitsInOrder(expected));
      bloc.add(const DetailsCheckInEvent.datePicked("06/09/2021"));
      bloc.add(const DetailsCheckInEvent.timePicked("10:32 até 10:32"));
    });

    test("should emit timestamp for arrival and departure", () async {
      const expected = [
        DetailsCheckInState(
          dateUi: "06/09/2021",
          timeUi: "Selecione o horário de entrada e saída",
          enableSaveButton: false,
          arrival: 0,
          departure: 0,
        ),
        DetailsCheckInState(
          dateUi: "06/09/2021",
          timeUi: "10:32 até 11:30",
          enableSaveButton: true,
          arrival: 1630935120000,
          departure: 1630938600000,
        )
      ];
      expectLater(bloc.stream, emitsInOrder(expected));
      bloc.add(const DetailsCheckInEvent.datePicked("06/09/2021"));
      bloc.add(const DetailsCheckInEvent.timePicked("10:32 até 11:30"));
    });
  });

  group("datePicked", () {
    test("should emit only date when time isn't filled", () async {
      const expected = [
        DetailsCheckInState(
          dateUi: "test",
          timeUi: "Selecione o horário de entrada e saída",
          enableSaveButton: false,
          arrival: 0,
          departure: 0,
        )
      ];
      expectLater(bloc.stream, emitsInOrder(expected));
      bloc.add(const DetailsCheckInEvent.datePicked("test"));
    });

    test("should enable button when time is filled", () async {
      const expected = [
        DetailsCheckInState(
          dateUi: "Selecione o dia da visita",
          timeUi: "10:32 até 10:32",
          enableSaveButton: false,
          arrival: 0,
          departure: 0,
        ),
        DetailsCheckInState(
          dateUi: "06/09/2021",
          timeUi: "10:32 até 10:32",
          enableSaveButton: true,
          arrival: 1630935120000,
          departure: 1630935120000,
        )
      ];
      expectLater(bloc.stream, emitsInOrder(expected));
      bloc.add(const DetailsCheckInEvent.timePicked("10:32 até 10:32"));
      bloc.add(const DetailsCheckInEvent.datePicked("06/09/2021"));
    });

    test("should emit timestamp for arrival and departure", () async {
      const expected = [
        DetailsCheckInState(
          dateUi: "Selecione o dia da visita",
          timeUi: "10:32 até 11:30",
          enableSaveButton: false,
          arrival: 0,
          departure: 0,
        ),
        DetailsCheckInState(
          dateUi: "06/09/2021",
          timeUi: "10:32 até 11:30",
          enableSaveButton: true,
          arrival: 1630935120000,
          departure: 1630938600000,
        )
      ];
      expectLater(bloc.stream, emitsInOrder(expected));
      bloc.add(const DetailsCheckInEvent.timePicked("10:32 até 11:30"));
      bloc.add(const DetailsCheckInEvent.datePicked("06/09/2021"));
    });
  });
}
