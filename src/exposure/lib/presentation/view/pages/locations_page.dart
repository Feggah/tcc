import 'package:exposure/injection.dart';
import 'package:exposure/presentation/view/widgets/home_search.dart';
import 'package:exposure/presentation/view/widgets/location_empty.dart';
import 'package:exposure/presentation/view/widgets/location_error.dart';
import 'package:exposure/presentation/view/widgets/location_list.dart';
import 'package:exposure/presentation/view/widgets/main_text.dart';
import 'package:exposure/presentation/view/widgets/notification.dart';
import 'package:exposure/presentation/viewmodel/location_bloc.dart';
import 'package:exposure/presentation/viewmodel/notification_bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
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

  MultiBlocProvider buildBody(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LocationBloc>(
          create: (context) => getIt<LocationBloc>()
            ..add(
              const LocationEvent.loadHomeScreen(),
            ),
        ),
        BlocProvider<NotificationBloc>(
          create: (context) => getIt<NotificationBloc>()
            ..add(
              const NotificationEvent.watchNotifications(),
            ),
        )
      ],
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocListener<NotificationBloc, NotificationState>(
              listener: (context, state) {
                state.map(
                  initial: (_) {},
                  completed: (_) {},
                  failed: (_) {},
                  sent: (_) {
                    BlocProvider.of<NotificationBloc>(context)
                        .add(const NotificationEvent.saveLastSentTime());
                  },
                  watch: (_) {
                    FirebaseMessaging.onMessage.listen(
                      (RemoteMessage message) {
                        BlocProvider.of<NotificationBloc>(context).add(
                            NotificationEvent.display(message.notification));
                      },
                    );
                  },
                  received: (state) async {
                    appNotification(
                      title: state.notification.title,
                      body: state.notification.body,
                      error: false,
                    );
                  },
                );
              },
              child: Container(),
            ),
            const MainText(
              title: "Locais",
              size: 34,
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 30),
            const HomeSearch(),
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
            ),
          ],
        ),
      ),
    );
  }
}
