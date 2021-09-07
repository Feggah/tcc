import 'package:exposure/domain/entities/location.dart';
import 'package:exposure/presentation/view/widgets/location_card.dart';
import 'package:exposure/presentation/viewmodel/location_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocationList extends StatelessWidget {
  final List<Location> list;

  const LocationList({
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RefreshIndicator(
        onRefresh: () async {
          BlocProvider.of<LocationBloc>(context).add(
            const LocationEvent.refresh(),
          );
        },
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
      ),
    );
  }
}
