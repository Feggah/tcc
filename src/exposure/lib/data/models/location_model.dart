import 'package:exposure/domain/entities/location.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class LocationModel extends Location {
  LocationModel({
    required String name,
    required String address,
    required String photoReference,
    required double latitude,
    required double longitude,
    String date = "",
  }) : super(
          name: name,
          address: address,
          photoReference: photoReference,
          date: date,
          longitude: longitude,
          latitude: latitude,
        );

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    final int arrival = (json["arrival"] as num).toInt();
    return LocationModel(
      name: json["name"] as String,
      address: json["address"] as String,
      photoReference: json["photoReference"] as String,
      latitude: (json["latitude"] as num).toDouble(),
      longitude: (json["longitude"] as num).toDouble(),
      date: arrivalDate(arrival),
    );
  }

  factory LocationModel.fromFirestore(DocumentSnapshot doc) {
    // ignore: cast_nullable_to_non_nullable
    return LocationModel.fromJson(doc.data() as Map<String, dynamic>);
  }

  factory LocationModel.fromPlaceDetails(Map<String, dynamic> json) {
    return LocationModel(
      name: json["name"] as String,
      address: json["formatted_address"] as String,
      photoReference: json["photos"][0]["photo_reference"] as String,
      latitude: (json["geometry"]["location"]["lat"] as num).toDouble(),
      longitude: (json["geometry"]["location"]["lng"] as num).toDouble(),
    );
  }

  factory LocationModel.fromDomain(Location location) {
    return LocationModel(
      name: location.name,
      address: location.address,
      photoReference: location.photoReference,
      latitude: location.latitude,
      longitude: location.longitude,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      "address": address,
      "arrival": arrival,
      "departure": departure,
      "latitude": latitude,
      "longitude": longitude,
      "name": name,
      "photoReference": photoReference,
    };
  }
}

String arrivalDate(int timestamp) {
  final String day = DateFormat("dd").format(
    DateTime.fromMillisecondsSinceEpoch(timestamp),
  );
  final String month = DateFormat("MM").format(
    DateTime.fromMillisecondsSinceEpoch(timestamp),
  );
  final Map<String, String> monthMapping = {
    "01": "janeiro",
    "02": "fevereiro",
    "03": "março",
    "04": "abril",
    "05": "maio",
    "06": "junho",
    "07": "julho",
    "08": "agosto",
    "09": "setembro",
    "10": "outubro",
    "11": "novembro",
    "12": "dezembro",
  };
  return "$day de ${monthMapping[month]}";
}
