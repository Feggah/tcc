import 'package:exposure/domain/entities/location.dart';
import 'package:exposure/injection.dart';
import 'package:exposure/presentation/view/colors.dart';
import 'package:exposure/presentation/view/widgets/check_in_day.dart';
import 'package:exposure/presentation/view/widgets/check_in_time.dart';
import 'package:exposure/presentation/view/widgets/details_image.dart';
import 'package:exposure/presentation/view/widgets/main_text.dart';
import 'package:exposure/presentation/view/widgets/secondary_text.dart';
import 'package:exposure/presentation/viewmodel/details_bloc.dart';
import 'package:exposure/presentation/viewmodel/details_check_in_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocationDetails extends StatelessWidget {
  final Location location;

  const LocationDetails({required this.location}) : super();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DetailsCheckInBloc>(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailsImage(image: location.image),
          BlocBuilder<DetailsCheckInBloc, DetailsCheckInState>(
            builder: (context, state) => Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  decoration: const BoxDecoration(
                    color: CustomColor.background,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MainText(
                        title: location.name,
                        size: 30,
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 40),
                      SecondaryText(
                        title: location.address,
                        size: 17,
                        center: false,
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 30),
                      CheckInDay(
                        date: state.dateUi,
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 30),
                      CheckInTime(
                        time: state.timeUi,
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 8),
                      TextButton(
                        onPressed: state.enableSaveButton
                            ? () {
                                location.arrival = state.arrival;
                                location.departure = state.departure;
                                BlocProvider.of<DetailsBloc>(context).add(
                                  DetailsEvent.saveLocation(location),
                                );
                              }
                            : null,
                        child: Container(
                          height: MediaQuery.of(context).size.height / 14,
                          decoration: BoxDecoration(
                            color: state.enableSaveButton
                                ? CustomColor.button
                                : Colors.grey[400],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "SALVAR VISITA",
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
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
