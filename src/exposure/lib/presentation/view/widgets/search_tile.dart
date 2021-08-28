import 'package:exposure/domain/entities/location_search_item.dart';
import 'package:exposure/presentation/view/colors.dart';
import 'package:flutter/material.dart';

class SearchTile extends StatelessWidget {
  final LocationSearchItem item;

  const SearchTile({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Text(
        item.title,
        style: const TextStyle(
          color: CustomColor.mainText,
          fontSize: 18,
          fontFamily: "Roboto",
          fontWeight: FontWeight.bold,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        item.description,
        style: const TextStyle(
          color: CustomColor.secondaryText,
          fontSize: 12,
          fontFamily: "Roboto",
          fontWeight: FontWeight.normal,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
