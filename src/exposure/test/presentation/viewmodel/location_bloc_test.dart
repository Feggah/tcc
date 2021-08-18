import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:exposure/domain/entities/location.dart';
import 'package:exposure/domain/usecases/list_location.dart';
import 'package:exposure/presentation/viewmodel/location_bloc.dart';
import 'package:exposure/shared/failures.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockListLocationUseCase extends Mock implements ListLocation {}

void main() {
  late LocationBloc bloc;
  late MockListLocationUseCase mockListLocationUseCase;

  final tLocation = Location(
    address: "test",
    arrival: 1,
    date: "31 de dezembro",
    departure: 2,
    name: "test",
    photoReference: "test",
  );
  tLocation.image = Uint8List(1);

  final List<Location> tList = [tLocation];

  setUp(() {
    mockListLocationUseCase = MockListLocationUseCase();
    bloc = LocationBloc(listLocation: mockListLocationUseCase);
  });

  test('init state should be Empty', () {
    expect(bloc.state, equals(const LocationState.empty()));
  });

  group("loadHomeScreen", () {
    test("should emit [loading, loadFailure] when an error occur", () async {
      when(() => mockListLocationUseCase()).thenAnswer(
        (_) async => const Left(Failure.internalError()),
      );
      const expected = [
        LocationState.loading(),
        LocationState.loadFailure(Failure.internalError()),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));
      bloc.add(const LocationEvent.loadHomeScreen());
    });

    test(
      'should emit [Loading, Loaded] when data is gotten successfully and it is greater than zero',
      () async {
        when(() => mockListLocationUseCase()).thenAnswer(
          (_) async => Right(tList),
        );
        final expected = [
          const LocationState.loading(),
          LocationState.loaded(tList)
        ];

        expectLater(bloc.stream, emitsInOrder(expected));

        bloc.add(const LocationEvent.loadHomeScreen());
      },
    );

    test(
      'should emit [Loading, Empty] when data is gotten successfully and it is equal to zero',
      () async {
        when(() => mockListLocationUseCase()).thenAnswer(
          (_) async => const Right([]),
        );
        final expected = [
          const LocationState.loading(),
          const LocationState.empty(),
        ];

        expectLater(bloc.stream, emitsInOrder(expected));

        bloc.add(const LocationEvent.loadHomeScreen());
      },
    );
  });
}
