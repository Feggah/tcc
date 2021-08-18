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
    arrival: 1628290453000,
    departure: 1628290753000,
    date: "06 de agosto",
  );
  tLocationModel.image = Uint8List(1);

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

    expect(result, tLocationModel);
  });
}
