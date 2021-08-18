import 'package:exposure/domain/entities/location.dart';
import 'package:exposure/presentation/view/widgets/location_card.dart';
import 'package:flutter/material.dart';

class LocationList extends StatelessWidget {
  final List<Location> list;

  const LocationList({
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 5 / 6,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: list.length,
        itemBuilder: (context, index) {
          return LocationCard(
            location: list[index],
          );
        },
      ),
    );
  }
}
