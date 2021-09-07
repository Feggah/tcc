import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:exposure/data/datasources/i_firebase_datasource.dart';
import 'package:exposure/data/datasources/i_google_datasource.dart';
import 'package:exposure/data/models/location_model.dart';
import 'package:exposure/data/models/location_search_item_model.dart';
import 'package:exposure/data/repositories/location_repository_impl.dart';
import 'package:exposure/domain/entities/location.dart';
import 'package:exposure/shared/exceptions.dart';
import 'package:exposure/shared/failures.dart';
import 'package:exposure/shared/network_info.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockFirebaseDataSource extends Mock implements IFirebaseDataSource {}

class MockGoogleDataSource extends Mock implements IGoogleDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  late LocationRepositoryImpl repository;
  late MockFirebaseDataSource mockFirebaseDataSource;
  late MockGoogleDataSource mockGoogleDataSource;
  late MockNetworkInfo mockNetworkInfo;

  final tLocationModel = LocationModel(
    name: "test",
    address: "test",
    photoReference: "test",
    latitude: 1,
    longitude: 2,
    date: "31 de dezembro",
  );
  tLocationModel.image = Uint8List(1);

  const tLocationSearchItemModel = LocationSearchItemModel(
    locationId: "ChIJmc7J8QfPyJQR0MQQYFS70ng",
    title: "Academia Smart Fit - Cambuí II",
    description: "Rua Quatorze de Dezembro - Centro, Campinas - SP, Brasil",
  );

  final List<LocationModel> listModel = [tLocationModel];

  final List<LocationSearchItemModel> listItem = [tLocationSearchItemModel];

  setUp(() {
    mockFirebaseDataSource = MockFirebaseDataSource();
    mockNetworkInfo = MockNetworkInfo();
    mockGoogleDataSource = MockGoogleDataSource();
    repository = LocationRepositoryImpl(
      firebaseDataSource: mockFirebaseDataSource,
      networkInfo: mockNetworkInfo,
      googleDataSource: mockGoogleDataSource,
    );
  });

  setUpAll(() {
    final Location location = LocationModel(
      name: "name",
      address: "address",
      photoReference: "photoReference",
      latitude: 0,
      longitude: 0,
    );
    location.image = Uint8List(1);
    location.arrival = 0;
    location.departure = 0;
    registerFallbackValue(location);
  });

  void runTestsOnline(Function body) {
    group('device is online', () {
      setUp(() {
        when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      });

      body();
    });
  }

  void runTestsOffline(Function body) {
    group('device is offline', () {
      setUp(() {
        when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => false);
      });

      body();
    });
  }

  group("ListLocation", () {
    test("should check if device is online", () async {
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockFirebaseDataSource.listLocation())
          .thenAnswer((_) async => []);

      await repository.listLocation();

      verify(() => mockNetworkInfo.isConnected);
    });

    runTestsOnline(() {
      test(
        "should return list of location when the call to data source is successful",
        () async {
          // arrange
          when(() => mockFirebaseDataSource.listLocation())
              .thenAnswer((_) async => listModel);
          // act
          final result = await repository.listLocation();
          // assert
          verify(() => mockFirebaseDataSource.listLocation());
          expect(result, equals(Right(listModel)));
        },
      );

      test(
        'should return server failure when the call to data source is unsuccessful',
        () async {
          // arrange
          when(() => mockFirebaseDataSource.listLocation())
              .thenThrow(ServerException());
          // act
          final result = await repository.listLocation();
          // assert
          verify(() => mockFirebaseDataSource.listLocation());
          expect(result, equals(const Left(Failure.internalError())));
        },
      );
    });
    runTestsOffline(() {
      test(
        'should return no internet connection when device is offline',
        () async {
          // act
          final result = await repository.listLocation();
          // assert
          verifyZeroInteractions(mockFirebaseDataSource);
          verify(() => mockNetworkInfo.isConnected);
          expect(result, equals(const Left(Failure.noInternetConnection())));
        },
      );
    });
  });

  group("searchLocation", () {
    test("should check if device is online", () async {
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockGoogleDataSource.searchLocation(any()))
          .thenAnswer((_) async => []);

      await repository.searchLocation("test");

      verify(() => mockNetworkInfo.isConnected);
    });

    runTestsOnline(() {
      test(
        "should return list of LocationSearchItem when the call to data source is successful",
        () async {
          // arrange
          when(() => mockGoogleDataSource.searchLocation(any()))
              .thenAnswer((_) async => listItem);
          // act
          final result = await repository.searchLocation("test");
          // assert
          verify(() => mockGoogleDataSource.searchLocation("test"));
          expect(result, equals(Right(listItem)));
        },
      );

      test(
        'should return server failure when the call to data source is unsuccessful',
        () async {
          // arrange
          when(() => mockGoogleDataSource.searchLocation(any()))
              .thenThrow(ServerException());
          // act
          final result = await repository.searchLocation("test");
          // assert
          verify(() => mockGoogleDataSource.searchLocation("test"));
          expect(result, equals(const Left(Failure.internalError())));
        },
      );
    });
    runTestsOffline(() {
      test(
        'should return no internet connection when device is offline',
        () async {
          // act
          final result = await repository.searchLocation("test");
          // assert
          verifyZeroInteractions(mockGoogleDataSource);
          verify(() => mockNetworkInfo.isConnected);
          expect(result, equals(const Left(Failure.noInternetConnection())));
        },
      );
    });
  });

  group("getLocation", () {
    final LocationModel expected = LocationModel(
      name: "name",
      address: "address",
      photoReference: "photoReference",
      latitude: 0,
      longitude: 0,
    );
    expected.image = Uint8List(1);
    expected.arrival = 0;
    expected.departure = 0;
    test("should check if device is online", () async {
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockGoogleDataSource.getLocationDetails(any())).thenAnswer(
        (_) async => LocationModel(
          name: "name",
          address: "address",
          photoReference: "photoReference",
          latitude: 0,
          longitude: 0,
        ),
      );
      when(() => mockGoogleDataSource.getPhotoImage(any()))
          .thenAnswer((_) async => Uint8List(1));

      await repository.getLocation("test");

      verify(() => mockNetworkInfo.isConnected);
    });

    runTestsOnline(() {
      test(
        "should return LocationModel when the call to data source is successful",
        () async {
          when(() => mockGoogleDataSource.getLocationDetails(any())).thenAnswer(
            (_) async => LocationModel(
              name: "name",
              address: "address",
              photoReference: "photoReference",
              latitude: 0,
              longitude: 0,
            ),
          );
          when(() => mockGoogleDataSource.getPhotoImage(any()))
              .thenAnswer((_) async => Uint8List(1));

          final result = await repository.getLocation("test");
          result.fold((l) => null, (r) {
            r.arrival = 0;
            r.departure = 0;
          });

          verify(() => mockGoogleDataSource.getLocationDetails("test"));
          expect(result, equals(Right(expected)));
        },
      );
      test(
        'should return server failure when the call to data source is unsuccessful',
        () async {
          when(() => mockGoogleDataSource.getLocationDetails(any()))
              .thenThrow(ServerException());

          final result = await repository.getLocation("test");

          verify(() => mockGoogleDataSource.getLocationDetails("test"));
          expect(result, equals(const Left(Failure.internalError())));
        },
      );
    });

    runTestsOffline(() {
      test(
        'should return no internet connection when device is offline',
        () async {
          final result = await repository.getLocation("test");

          verifyZeroInteractions(mockGoogleDataSource);
          verify(() => mockNetworkInfo.isConnected);
          expect(result, equals(const Left(Failure.noInternetConnection())));
        },
      );
    });
  });

  group("saveLocation", () {
    final Location location = LocationModel(
      name: "name",
      address: "address",
      photoReference: "photoReference",
      latitude: 0,
      longitude: 0,
    );
    location.image = Uint8List(1);
    location.arrival = 0;
    location.departure = 0;
    test("should check if device is online", () async {
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockFirebaseDataSource.saveLocation(any()))
          .thenAnswer((_) async => unit);

      await repository.saveLocation(location);

      verify(() => mockNetworkInfo.isConnected);
    });

    runTestsOnline(() {
      test(
        "should return unit when the call to data source is successful",
        () async {
          when(() => mockFirebaseDataSource.saveLocation(any()))
              .thenAnswer((_) async => unit);

          final result = await repository.saveLocation(location);

          verify(() => mockFirebaseDataSource.saveLocation(location));
          expect(result, equals(const Right(unit)));
        },
      );
      test(
        'should return server failure when the call to data source is unsuccessful',
        () async {
          when(() => mockFirebaseDataSource.saveLocation(any()))
              .thenThrow(ServerException());

          final result = await repository.saveLocation(location);

          verify(() => mockFirebaseDataSource.saveLocation(location));
          expect(result, equals(const Left(Failure.internalError())));
        },
      );
    });

    runTestsOffline(() {
      test(
        'should return no internet connection when device is offline',
        () async {
          final result = await repository.saveLocation(location);

          verifyZeroInteractions(mockFirebaseDataSource);
          verify(() => mockNetworkInfo.isConnected);
          expect(result, equals(const Left(Failure.noInternetConnection())));
        },
      );
    });
  });
}
