import 'package:auto_route/auto_route.dart';
import 'package:exposure/injection.dart';
import 'package:exposure/presentation/view/colors.dart';
import 'package:exposure/presentation/view/widgets/main_text.dart';
import 'package:exposure/presentation/view/widgets/secondary_text.dart';
import 'package:exposure/presentation/viewmodel/infected_bloc.dart';
import 'package:exposure/shared/failures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ConfirmedPage extends StatelessWidget {
  const ConfirmedPage() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: buildBody(context),
    );
  }

  BlocProvider<InfectedBloc> buildBody(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<InfectedBloc>()
        ..add(const InfectedEvent.saveInfectedLocations()),
      child: BlocBuilder<InfectedBloc, InfectedState>(
        builder: (context, state) {
          return state.map(
            loading: (state) => Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height,
              child: const CircularProgressIndicator(),
            ),
            saved: (state) => Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const MainText(title: "Obrigado!", size: 34),
                      IconButton(
                        onPressed: () {
                          AutoRouter.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.close,
                          color: CustomColor.mainText,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 30),
                  const SecondaryText(
                    title: "Já recebemos os locais visitados por você!",
                    size: 17,
                    center: false,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 6),
                  Container(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(
                      "assets/images/sent.svg",
                      width: MediaQuery.of(context).size.width / 1.3,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 30),
                  const SecondaryText(
                    title:
                        "Agradecemos a sua preocupação em ajudar para que outras pessoas não sejam infectadas!",
                    size: 17,
                    center: true,
                  )
                ],
              ),
            ),
            loadFailure: (state) => Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        AutoRouter.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.close,
                        color: CustomColor.mainText,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height,
                      child: SecondaryText(
                        title: (state.failure is InternalError)
                            ? "Um erro ocorreu durante o processamento da requisição. Verifique sua conexão com a internet e tente novamente."
                            : "Você enviou suas localizações recentemente. Por favor, espere ao menos 14 dias para enviá-las novamente.",
                        size: 17,
                        center: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
