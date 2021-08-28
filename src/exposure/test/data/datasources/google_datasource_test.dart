import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:exposure/data/datasources/i_secret_datasource.dart';
import 'package:exposure/data/datasources/google_datasource_impl.dart';
import 'package:exposure/shared/exceptions.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

class MockSecret extends Mock implements ISecretDataSource {}

void main() {
  late GoogleDataSourceImpl googleDataSource;
  late MockSecret mockSecret;
  late MockDio mockDio;

  setUp(() {
    mockDio = MockDio();
    mockSecret = MockSecret();
    googleDataSource =
        GoogleDataSourceImpl(client: mockDio, secretDataSource: mockSecret);
  });

  group("getPhotoImage", () {
    test("should catch an exception", () {
      when(() => mockSecret.getApiKey()).thenThrow(ServerException);

      final call = googleDataSource.getPhotoImage;

      expect(() => call("any"), throwsA(const TypeMatcher<ServerException>()));
    });
    test("should succeed", () async {
      final want = Uint8List(2);
      when(() => mockSecret.getApiKey()).thenAnswer((_) async => "test");
      when(() => mockDio.get(any())).thenAnswer((_) => Future.value(
            Response(
              data: want,
              requestOptions: RequestOptions(path: "test"),
              statusCode: 200,
            ),
          ));

      final got = await googleDataSource.getPhotoImage("test");

      expect(got, want);
    });
  });
}
