import 'package:exposure/presentation/view/widgets/secondary_text.dart';
import 'package:exposure/presentation/viewmodel/location_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LocationError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<LocationBloc>(context).add(
          const LocationEvent.refresh(),
        );
      },
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
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
                "assets/images/server_error.svg",
                width: MediaQuery.of(context).size.width / 1.37,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
