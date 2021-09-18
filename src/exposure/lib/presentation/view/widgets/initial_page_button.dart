import 'package:auto_route/auto_route.dart';
import 'package:exposure/presentation/view/colors.dart';
import 'package:exposure/presentation/viewmodel/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialPageButton extends StatelessWidget {
  const InitialPageButton() : super();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        BlocProvider.of<AuthBloc>(context).add(
          const AuthEvent.authenticate(),
        );
        AutoRouter.of(context).pop();
      },
      child: Container(
        height: MediaQuery.of(context).size.height / 14,
        decoration: const BoxDecoration(
          color: CustomColor.button,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: const Center(
          child: Text(
            "COMEÇAR AGORA",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
