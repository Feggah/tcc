import 'package:auto_route/auto_route.dart';
import 'package:exposure/presentation/viewmodel/auth_bloc.dart';
import 'package:exposure/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) => AutoRouter.of(context).replace(
            const HomeRoute(),
          ),
          unauthenticated: (_) => AutoRouter.of(context).push(
            const InitialPageRoute(),
          ),
          internalError: (_) => const Text("Cheque sua conexão com a internet"),
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
