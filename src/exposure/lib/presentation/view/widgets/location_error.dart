import 'package:exposure/presentation/view/widgets/secondary_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LocationError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SecondaryText(
          title:
              "Ocorreu um erro durante o carregamento dos locais, verifique sua conexão com a internet.",
          size: 17,
          center: true,
        ),
        SizedBox(height: MediaQuery.of(context).size.height / 30),
        Container(
          alignment: Alignment.topCenter,
          child: SvgPicture.asset(
            "images/server_error.svg",
            width: MediaQuery.of(context).size.width / 1.37,
          ),
        ),
      ],
    );
  }
}
