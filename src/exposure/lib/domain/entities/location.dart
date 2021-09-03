import 'dart:typed_data';

import 'package:equatable/equatable.dart';

class Location extends Equatable {
  final String name;
  final String address;
  final String photoReference;
  final String date;
  final double latitude;
  final double longitude;
  late final int arrival;
  late final int departure;
  late final Uint8List image;

  // ignore: prefer_const_constructors_in_immutables
  Location({
    required this.name,
    required this.address,
    required this.photoReference,
    required this.latitude,
    required this.longitude,
    required this.date,
  });

  @override
  List<Object> get props => [
        name,
        address,
        photoReference,
        arrival,
        departure,
        date,
        image,
      ];
}
