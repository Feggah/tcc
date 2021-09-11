import 'package:auto_route/auto_route.dart';
import 'package:exposure/injection.dart';
import 'package:exposure/presentation/view/colors.dart';
import 'package:exposure/presentation/view/widgets/location_details.dart';
import 'package:exposure/presentation/view/widgets/secondary_text.dart';
import 'package:exposure/presentation/viewmodel/details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({@PathParam("locationId") required this.locationId});

  final String locationId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: CustomColor.mainText),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: buildBody(context),
    );
  }

  BlocProvider<DetailsBloc> buildBody(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<DetailsBloc>()..add(DetailsEvent.loadDetails(locationId)),
      child: BlocBuilder<DetailsBloc, DetailsState>(
        builder: (context, state) {
          if (state == const DetailsState.locationSaved()) {
            WidgetsBinding.instance?.addPostFrameCallback((_) {
              AutoRouter.of(context).popUntilRoot();
            });
          }
          return state.map(
            loading: (state) => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (state) => LocationDetails(location: state.location),
            loadFailure: (state) => Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height,
              child: const SecondaryText(
                title:
                    "Um erro ocorreu durante o processamento da requisição. Verifique sua conexão com a internet.",
                size: 17,
                center: true,
              ),
            ),
            locationSaved: (state) => Container(),
          );
        },
      ),
    );
  }
}
