// import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:exposure/data/datasources/firebase_datasource_impl.dart';
import 'package:exposure/data/datasources/google_datasource_impl.dart';
import 'package:exposure/data/datasources/secret_datasource_impl.dart';
import 'package:exposure/shared/exceptions.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// ignore: avoid_implementing_value_types
class MockFirebaseFirestore extends Mock implements FirebaseFirestore {}

class MockDio extends Mock implements Dio {}

void main() {
  late MockFirebaseFirestore mockFirebaseFirestore;
  late FirebaseDataSourceImpl firebaseDataSource;
  late GoogleDataSourceImpl googleDataSource;
  late MockDio mockDio;
  late SecretDataSourceImpl secretDataSource;

  setUp(() {
    mockFirebaseFirestore = MockFirebaseFirestore();
    mockDio = MockDio();
    secretDataSource = SecretDataSourceImpl();
    googleDataSource = GoogleDataSourceImpl(
        client: mockDio, secretDataSource: secretDataSource);
    firebaseDataSource = FirebaseDataSourceImpl(
      firestore: mockFirebaseFirestore,
      googleDataSource: googleDataSource,
    );
  });

  group("listLocation", () {
    test("should catch an exception", () {
      when(() => mockFirebaseFirestore.doc(any())).thenThrow(ServerException);

      final call = firebaseDataSource.listLocation;

      expect(() => call(), throwsA(const TypeMatcher<ServerException>()));
    });
  });
}