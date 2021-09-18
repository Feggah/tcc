import 'package:exposure/presentation/view/colors.dart';
import 'package:exposure/presentation/view/widgets/initial_page_button.dart';
import 'package:exposure/presentation/view/widgets/secondary_text.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.initialBackground,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(),
          ),
          Expanded(
            flex: 7,
            child: Container(
              decoration: const BoxDecoration(
                color: CustomColor.background,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 5,
                            blurRadius: 7,
                          ),
                        ],
                      ),
                      width: MediaQuery.of(context).size.height / 8.5,
                      height: MediaQuery.of(context).size.height / 8.5,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.blue,
                          image: const DecorationImage(
                            image: AssetImage(
                              "assets/icon/app-icon.png",
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "Rastreamento de\ncontatos",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 34,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                        color: CustomColor.mainText,
                      ),
                    ),
                    const SecondaryText(
                      title:
                          "Salve no aplicativo os lugares que você visitar. Se alguma pessoa infectada por uma doença infecciosa se encontrar com você, te avisaremos!",
                      size: 17,
                      center: true,
                    ),
                    const InitialPageButton(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
