import 'package:exposure/injection.dart';
import 'package:exposure/presentation/view/widgets/location_empty.dart';
import 'package:exposure/presentation/view/widgets/location_error.dart';
import 'package:exposure/presentation/view/widgets/location_list.dart';
import 'package:exposure/presentation/view/widgets/main_text.dart';
import 'package:exposure/presentation/viewmodel/location_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocationsPage extends StatelessWidget {
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

  BlocProvider<LocationBloc> buildBody(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<LocationBloc>()..add(const LocationEvent.loadHomeScreen()),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MainText(
              title: "Locais",
              size: 34,
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 30),
            Placeholder(
              fallbackHeight: MediaQuery.of(context).size.height / 18.5,
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 18.5),
            const MainText(
              title: "Visitados nas últimas semanas",
              size: 22,
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 30),
            BlocBuilder<LocationBloc, LocationState>(
              builder: (context, state) {
                return state.map(
                  loading: (state) =>
                      const Center(child: CircularProgressIndicator()),
                  loadFailure: (state) => LocationError(),
                  loaded: (state) => LocationList(list: state.locations),
                  empty: (state) => LocationEmpty(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
