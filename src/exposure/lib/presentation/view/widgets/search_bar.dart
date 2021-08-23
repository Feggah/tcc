import 'package:exposure/presentation/view/colors.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar() : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 18.5,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(27.0),
        border: Border.all(color: CustomColor.cardBorder),
      ),
      padding: const EdgeInsets.only(left: 22),
      child: const TextField(
        autofocus: true,
        style: TextStyle(fontFamily: "Roboto"),
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          hintText: "Pesquisar",
        ),
      ),
    );
  }
}
