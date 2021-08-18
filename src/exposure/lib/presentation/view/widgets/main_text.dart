import 'package:exposure/presentation/view/colors.dart';
import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  final String title;
  final double size;

  const MainText({
    required this.title,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: size,
        fontFamily: "Roboto",
        fontWeight: FontWeight.bold,
        color: CustomColor.mainText,
      ),
    );
  }
}
