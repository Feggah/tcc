import 'dart:typed_data';

import 'package:exposure/presentation/view/colors.dart';
import 'package:flutter/material.dart';

class DetailsImage extends StatelessWidget {
  final Uint8List image;

  const DetailsImage({required this.image}) : super();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: MemoryImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 24,
          decoration: const BoxDecoration(
            color: CustomColor.background,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
        )
      ],
    );
  }
}
