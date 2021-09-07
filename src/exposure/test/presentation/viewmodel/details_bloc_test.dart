import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:exposure/domain/entities/location.dart';
import 'package:exposure/domain/usecases/get_location.dart' as get_location;
import 'package:exposure/domain/usecases/save_location.dart' as save_location;
import 'package:exposure/presentation/viewmodel/details_bloc.dart';
import 'package:exposure/shared/failures.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockGetLocationUseCase extends Mock implements get_location.GetLocation {}

class MockSaveLocationUseCase extends Mock
    implements save_location.SaveLocation {}

void main() {
  late DetailsBloc bloc;
  late MockGetLocationUseCase mockGetLocationUseCase;
  late MockSaveLocationUseCase mockSaveLocationUseCase;

  final tLocation = Location(
    name: "name",
    address: "address",
    photoReference: "photoReference",
    latitude: 0,
    longitude: 0,
    date: "date",
  );
  tLocation.arrival = 0;
  tLocation.departure = 0;
  tLocation.image = Uint8List(1);

  setUpAll(() {
    registerFallbackValue(const get_location.Params(id: "dummy"));
    registerFallbackValue(save_location.Params(location: tLocation));
  });

  setUp(() {
    mockGetLocationUseCase = MockGetLocationUseCase();
    mockSaveLocationUseCase = MockSaveLocationUseCase();
    bloc = DetailsBloc(
      getLocation: mockGetLocationUseCase,
      saveLocation: mockSaveLocationUseCase,
    );
  });

  test('init state should be Loading', () {
    expect(bloc.state, equals(const DetailsState.loading()));
  });

  group("loadDetails", () {
    test("should emit [loadFailure] when an error occur", () async {
      when(() => mockGetLocationUseCase(any())).thenAnswer(
        (_) async => const Left(Failure.internalError()),
      );
      const expected = [
        DetailsState.loadFailure(Failure.internalError()),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));
      bloc.add(const DetailsEvent.loadDetails("test"));
    });

    test(
      'should emit [Loaded] when data is gotten successfully',
      () async {
        when(() => mockGetLocationUseCase(any())).thenAnswer(
          (_) async => Right(tLocation),
        );
        final expected = [
          DetailsState.loaded(tLocation),
        ];

        expectLater(bloc.stream, emitsInOrder(expected));
        bloc.add(const DetailsEvent.loadDetails("test"));
      },
    );
  });

  group("saveLocation", () {
    test("should emit [loading, loadFailure] when an error occur", () async {
      when(() => mockSaveLocationUseCase(any())).thenAnswer(
        (_) async => const Left(Failure.internalError()),
      );
      const expected = [
        DetailsState.loading(),
        DetailsState.loadFailure(Failure.internalError()),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));
      bloc.add(DetailsEvent.saveLocation(tLocation));
    });

    test(
      'should emit [loading, locationSaved] when location is saved successfully',
      () async {
        when(() => mockSaveLocationUseCase(any())).thenAnswer(
          (_) async => const Right(unit),
        );
        const expected = [
          DetailsState.loading(),
          DetailsState.locationSaved(),
        ];

        expectLater(bloc.stream, emitsInOrder(expected));
        bloc.add(DetailsEvent.saveLocation(tLocation));
      },
    );
  });
}
