// import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:exposure/data/datasources/firebase_datasource_impl.dart';
import 'package:exposure/data/datasources/google_datasource_impl.dart';
import 'package:exposure/data/datasources/secret_datasource_impl.dart';
import 'package:exposure/domain/entities/location.dart';
import 'package:exposure/injection.dart';
import 'package:exposure/shared/exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// ignore: avoid_implementing_value_types
class MockFirebaseFirestore extends Mock implements FirebaseFirestore {}

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockDio extends Mock implements Dio {}

void main() {
  late MockFirebaseFirestore mockFirebaseFirestore;
  late MockFirebaseAuth mockFirebaseAuth;
  late FirebaseDataSourceImpl firebaseDataSource;
  late GoogleDataSourceImpl googleDataSource;
  late MockDio mockDio;
  late SecretDataSourceImpl secretDataSource;

  final Location location = Location(
    name: "name",
    address: "address",
    photoReference: "photoReference",
    latitude: 0,
    longitude: 0,
    date: "date",
  );

  setUpAll(() {
    configureInjection();
  });

  setUp(() {
    mockFirebaseFirestore = MockFirebaseFirestore();
    mockFirebaseAuth = MockFirebaseAuth();
    mockDio = MockDio();
    secretDataSource = SecretDataSourceImpl();
    googleDataSource = GoogleDataSourceImpl(
        client: mockDio, secretDataSource: secretDataSource);
    firebaseDataSource = FirebaseDataSourceImpl(
      firestore: mockFirebaseFirestore,
      googleDataSource: googleDataSource,
      firebaseAuth: mockFirebaseAuth,
    );
  });

  group("listLocation", () {
    test("should catch an exception", () {
      when(() => mockFirebaseFirestore.doc(any())).thenThrow(ServerException);

      final call = firebaseDataSource.listLocation;

      expect(() => call(), throwsA(const TypeMatcher<ServerException>()));
    });
  });

  group("saveLocation", () {
    test("should catch an exception", () {
      when(() => mockFirebaseFirestore.doc(any())).thenThrow(ServerException);

      final call = firebaseDataSource.saveLocation;

      expect(
        () => call(location),
        throwsA(const TypeMatcher<ServerException>()),
      );
    });
  });
}
