import 'package:exposure/presentation/view/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: MediaQuery.of(context).size.height / 10,
      ),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(20, 1, 20, 0),
        child: SearchBar(),
      ),
    );
  }
}
