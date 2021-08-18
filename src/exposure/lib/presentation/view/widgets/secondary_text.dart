import 'package:exposure/presentation/view/colors.dart';
import 'package:flutter/material.dart';

class SecondaryText extends StatelessWidget {
  final String title;
  final double size;
  final bool center;

  const SecondaryText({
    required this.title,
    required this.size,
    required this.center,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: size,
        fontFamily: "Roboto",
        color: CustomColor.secondaryText,
      ),
      textAlign: center == true ? TextAlign.center : TextAlign.left,
    );
  }
}
