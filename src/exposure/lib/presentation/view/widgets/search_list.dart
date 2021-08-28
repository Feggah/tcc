import 'package:exposure/domain/entities/location_search_item.dart';
import 'package:exposure/presentation/view/colors.dart';
import 'package:exposure/presentation/view/widgets/search_tile.dart';
import 'package:flutter/material.dart';

class SearchList extends StatelessWidget {
  final List<LocationSearchItem> list;

  const SearchList({
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: const BorderSide(
                color: CustomColor.cardBorder,
              ),
            ),
            child: SearchTile(item: list[index]),
          );
        },
      ),
    );
  }
}
