import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:exposure/data/datasources/i_firebase_datasource.dart';
import 'package:exposure/data/datasources/i_google_datasource.dart';
import 'package:exposure/data/models/location_model.dart';
import 'package:exposure/data/repositories/location_repository_impl.dart';
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
    arrival: 3,
    departure: 4,
    date: "31 de dezembro",
  );
  tLocationModel.image = Uint8List(1);

  final List<LocationModel> listModel = [tLocationModel];

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
          // verifyZeroInteractions(mockLocationDataSource);
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
}
