import 'package:equatable/equatable.dart';

class LocationSearchItem extends Equatable {
  final String locationId;
  final String title;
  final String description;

  const LocationSearchItem({
    required this.locationId,
    required this.title,
    required this.description,
  });

  @override
  List<Object> get props => [locationId, title, description];
}
