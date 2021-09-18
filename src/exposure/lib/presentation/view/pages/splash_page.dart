import 'package:auto_route/auto_route.dart';
import 'package:exposure/presentation/view/widgets/notification.dart';
import 'package:exposure/presentation/viewmodel/auth_bloc.dart';
import 'package:exposure/presentation/routes/router.gr.dart';
import 'package:exposure/presentation/viewmodel/configure_notification_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.map(
              initial: (_) {},
              authenticated: (_) =>
                  BlocProvider.of<ConfigureNotificationBloc>(context).add(
                const ConfigureNotificationEvent.checkConfiguration(),
              ),
              unauthenticated: (_) => AutoRouter.of(context).push(
                const InitialPageRoute(),
              ),
              internalError: (_) =>
                  const Text("Cheque sua conexão com a internet"),
            );
          },
        ),
        BlocListener<ConfigureNotificationBloc, ConfigureNotificationState>(
          listener: (context, state) {
            state.map(
              initial: (_) {},
              failed: (_) {
                appNotification(
                  title:
                      "Ocorreu um erro durante a configuração de notificações",
                  body:
                      "Por favor, verifique se as permissões para receber notificações do aplicativo estão habilitadas.",
                  error: true,
                );
              },
              configured: (_) {
                AutoRouter.of(context).replace(const HomeRoute());
              },
              notConfigured: (_) {
                BlocProvider.of<ConfigureNotificationBloc>(context).add(
                  const ConfigureNotificationEvent.configure(),
                );
              },
            );
          },
        ),
      ],
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
