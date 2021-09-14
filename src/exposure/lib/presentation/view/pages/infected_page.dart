import 'package:auto_route/auto_route.dart';
import 'package:exposure/injection.dart';
import 'package:exposure/presentation/view/colors.dart';
import 'package:exposure/presentation/routes/router.gr.dart';
import 'package:exposure/presentation/view/widgets/main_text.dart';
import 'package:exposure/presentation/view/widgets/secondary_text.dart';
import 'package:exposure/presentation/viewmodel/checkbox_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfectedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: MediaQuery.of(context).size.height / 10,
      ),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return CustomColor.main;
    }

    return SingleChildScrollView(
      child: BlocProvider(
        create: (context) => getIt<CheckBoxBloc>(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MainText(
                title: "Infecção",
                size: 34,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 30),
              const SecondaryText(
                title:
                    "Caso você tenha sido diagnosticado com alguma doença infecciosa, nos ajude a evitar que outras pessoas também sejam infectadas!",
                size: 17,
                center: false,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 30),
              const MainText(
                title: "Declaração de infecção",
                size: 22,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 30),
              const SecondaryText(
                title:
                    "Antes de continuar, certifique-se que todos os locais visitados por você nos últimos 14 dias foram anteriormente salvos no aplicativo.",
                size: 17,
                center: false,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 30),
              Container(
                alignment: Alignment.topCenter,
                child: SvgPicture.asset(
                  "assets/images/doctor.svg",
                  width: MediaQuery.of(context).size.width / 1.5,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 30),
              BlocBuilder<CheckBoxBloc, CheckBoxState>(
                builder: (context, state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: state.enableButton,
                            onChanged: (value) {
                              BlocProvider.of<CheckBoxBloc>(context).add(
                                CheckBoxEvent.changeCheckBox(value!),
                              );
                            },
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                          ),
                          const Flexible(
                            child: SecondaryText(
                              title:
                                  "Confirmo que fui ao médico e testei positivo para uma doença infecciosa.",
                              size: 17,
                              center: false,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 30),
                      TextButton(
                        onPressed: state.enableButton
                            ? () {
                                AutoRouter.of(context)
                                    .push(const ConfirmedPageRoute());
                              }
                            : null,
                        child: Container(
                          height: MediaQuery.of(context).size.height / 14,
                          decoration: BoxDecoration(
                            color: state.enableButton
                                ? CustomColor.button
                                : Colors.grey[400],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "ESTOU INFECTADO",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
