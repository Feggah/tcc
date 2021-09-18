import 'package:exposure/domain/entities/location_search_item.dart';

class LocationSearchItemModel extends LocationSearchItem {
  const LocationSearchItemModel({
    required String locationId,
    required String title,
    required String description,
  }) : super(
          locationId: locationId,
          title: title,
          description: description,
        );

  factory LocationSearchItemModel.fromJson(Map<String, dynamic> json) {
    return LocationSearchItemModel(
      locationId: json["place_id"] as String,
      title: json["structured_formatting"]["main_text"] as String,
      description: json["structured_formatting"]["secondary_text"] as String,
    );
  }
}
