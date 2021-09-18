import 'dart:convert';

import 'package:exposure/data/models/location_search_item_model.dart';
import 'package:exposure/domain/entities/location_search_item.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixture/fixture_reader.dart';

void main() {
  const tLocationSearchItemModel = LocationSearchItemModel(
    locationId: "ChIJmc7J8QfPyJQR0MQQYFS70ng",
    title: "Academia Smart Fit - Cambuí II",
    description: "Rua Quatorze de Dezembro - Centro, Campinas - SP, Brasil",
  );

  test(
    "LocationSearchItemModel should be a subclass of LocationSearchItem entity",
    () {
      expect(tLocationSearchItemModel, isA<LocationSearchItem>());
    },
  );

  test("fromJson should return a valid LocationSearchItemModel", () async {
    final Map<String, dynamic> jsonMap =
        json.decode(fixture("autocomplete.json")) as Map<String, dynamic>;
    final item = jsonMap["predictions"][0] as Map<String, dynamic>;

    final result = LocationSearchItemModel.fromJson(item);

    expect(result, tLocationSearchItemModel);
  });
}
