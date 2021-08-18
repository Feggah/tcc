import 'dart:typed_data';

import 'package:equatable/equatable.dart';

class Location extends Equatable {
  final String name;
  final String address;
  final String photoReference;
  final String date;
  final int arrival;
  final int departure;
  late final Uint8List image;

  // ignore: prefer_const_constructors_in_immutables
  Location({
    required this.name,
    required this.address,
    required this.photoReference,
    required this.arrival,
    required this.departure,
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
