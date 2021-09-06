import 'dart:convert';
import 'dart:typed_data';

import 'package:exposure/data/models/location_model.dart';
import 'package:exposure/domain/entities/location.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixture/fixture_reader.dart';

void main() {
  final tLocationModel = LocationModel(
    name: "test",
    address: "test",
    photoReference: "test",
    latitude: 1,
    longitude: 2,
    date: "06 de agosto",
  );
  tLocationModel.image = Uint8List(1);
  tLocationModel.arrival = 1628290453000;
  tLocationModel.departure = 1628290753000;

  test(
    "LocationModel should be a subclass of Location entity",
    () {
      expect(tLocationModel, isA<Location>());
    },
  );

  test("fromJson should return a valid LocationModel", () async {
    final Map<String, dynamic> jsonMap =
        json.decode(fixture("location.json")) as Map<String, dynamic>;

    final result = LocationModel.fromJson(jsonMap);
    result.image = Uint8List(1);
    result.arrival = 1628290453000;
    result.departure = 1628290753000;

    expect(result, tLocationModel);
  });

  test("fromPlaceDetails should return a valid LocationModel", () async {
    final Map<String, dynamic> jsonMap =
        json.decode(fixture("details.json")) as Map<String, dynamic>;
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

    final result = LocationModel.fromPlaceDetails(
        jsonMap["result"] as Map<String, dynamic>);
    result.arrival = 0;
    result.departure = 0;
    result.image = Uint8List(1);

    expect(result, expected);
  });
}
