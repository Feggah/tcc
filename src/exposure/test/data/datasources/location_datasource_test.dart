// import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:exposure/data/datasources/location_datasource_impl.dart';
import 'package:exposure/data/datasources/photo_datasource_impl.dart';
import 'package:exposure/data/datasources/secret_datasource_impl.dart';
import 'package:exposure/shared/exceptions.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// ignore: avoid_implementing_value_types
class MockFirebaseFirestore extends Mock implements FirebaseFirestore {}

class MockDio extends Mock implements Dio {}

void main() {
  late MockFirebaseFirestore mockFirebaseFirestore;
  late LocationDataSourceImpl locationDataSource;
  late PhotoDataSourceImpl photoDataSource;
  late MockDio mockDio;
  late SecretDataSourceImpl secretDataSource;

  setUp(() {
    mockFirebaseFirestore = MockFirebaseFirestore();
    mockDio = MockDio();
    secretDataSource = SecretDataSourceImpl();
    photoDataSource = PhotoDataSourceImpl(
        client: mockDio, secretDataSource: secretDataSource);
    locationDataSource = LocationDataSourceImpl(
      firestore: mockFirebaseFirestore,
      photoDataSource: photoDataSource,
    );
  });

  group("listLocation", () {
    test("should catch an exception", () {
      when(() => mockFirebaseFirestore.doc(any())).thenThrow(ServerException);

      final call = locationDataSource.listLocation;

      expect(() => call(), throwsA(const TypeMatcher<ServerException>()));
    });
  });
}
