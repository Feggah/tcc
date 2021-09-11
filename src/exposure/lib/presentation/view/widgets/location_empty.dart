import 'package:exposure/presentation/view/widgets/secondary_text.dart';
import 'package:exposure/presentation/viewmodel/location_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LocationEmpty extends StatelessWidget {
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
                  "Não encontramos nenhum local visitado recentemente por você.",
              size: 17,
              center: true,
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 30),
            Container(
              alignment: Alignment.topCenter,
              child: SvgPicture.asset(
                "images/location_not_found.svg",
                width: MediaQuery.of(context).size.width / 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
