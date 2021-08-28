import 'package:exposure/presentation/view/colors.dart';
import 'package:exposure/presentation/viewmodel/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      child: TextField(
        autofocus: true,
        style: const TextStyle(fontFamily: "Roboto"),
        decoration: const InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          hintText: "Pesquisar",
        ),
        onChanged: (String text) {
          BlocProvider.of<SearchBloc>(context)
              .add(SearchEvent.textChanged(text));
        },
      ),
    );
  }
}
