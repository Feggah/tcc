import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:exposure/data/datasources/i_secret_datasource.dart';
import 'package:exposure/data/datasources/google_datasource_impl.dart';
import 'package:exposure/data/models/location_model.dart';
import 'package:exposure/data/models/location_search_item_model.dart';
import 'package:exposure/shared/exceptions.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../fixture/fixture_reader.dart';

class MockDio extends Mock implements Dio {}

class MockSecret extends Mock implements ISecretDataSource {}

class MockLocationSearchItemModel extends Mock
    implements
        // ignore: avoid_implementing_value_types
        LocationSearchItemModel {}

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

  group("searchLocation", () {
    test("should catch an exception", () {
      when(() => mockSecret.getApiKey()).thenThrow(ServerException);

      final call = googleDataSource.searchLocation;

      expect(() => call("any"), throwsA(const TypeMatcher<ServerException>()));
    });

    test("should succeed", () async {
      final Map<String, dynamic> jsonMap =
          json.decode(fixture("autocomplete.json")) as Map<String, dynamic>;
      when(() => mockSecret.getApiKey()).thenAnswer((_) async => "test");
      when(() => mockDio.get(any())).thenAnswer((_) async => Response(
            data: jsonMap,
            requestOptions: RequestOptions(path: "test"),
            statusCode: 200,
          ));

      final got = await googleDataSource.searchLocation("test");

      expect(got.length, 1);
    });
  });

  group("getLocationDetails", () {
    test("should catch an exception", () {
      when(() => mockSecret.getApiKey()).thenThrow(ServerException);

      final call = googleDataSource.getLocationDetails;

      expect(() => call("any"), throwsA(const TypeMatcher<ServerException>()));
    });

    test("should succeed", () async {
      final LocationModel expected = LocationModel(
        name: "Asda Park Royal Superstore",
        address: "2-20 Western Rd, London NW10 7LW, UK",
        photoReference:
            "Aap_uEBG11VLD7rE0XoiSS0F7sEqKyJbROMyPdL0W2WHJsxsnfB-4j6d3kz94RHyQAN3hXV-VexDYhkyLRlec6vS6WnIKqsB4IC6AwcO25SOjL7aeVOaXl_tB9oj-Qpr9yGnPttwLuGV2Ce9W66Gynmss5OHExorBRKE1jQ2M5-vcYrrDfPn",
        latitude: 51.5285728,
        longitude: -0.2696692999999999,
      );
      expected.arrival = 0;
      expected.departure = 0;
      expected.image = Uint8List(1);
      final Map<String, dynamic> jsonMap =
          json.decode(fixture("details.json")) as Map<String, dynamic>;
      when(() => mockSecret.getApiKey()).thenAnswer((_) async => "test");
      when(() => mockDio.get(any())).thenAnswer((_) async => Response(
            data: jsonMap,
            requestOptions: RequestOptions(path: "test"),
            statusCode: 200,
          ));

      final got = await googleDataSource.getLocationDetails("test");
      got.arrival = 0;
      got.departure = 0;
      got.image = Uint8List(1);

      expect(got, expected);
    });
  });
}
