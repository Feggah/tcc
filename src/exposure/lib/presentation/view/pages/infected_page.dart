import 'package:flutter/material.dart';

class InfectedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: MediaQuery.of(context).size.height / 10,
      ),
      body: const Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Text("InfectedPage")),
    );
  }
}
