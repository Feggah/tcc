import 'package:exposure/injection.dart';
import 'package:exposure/presentation/routes/router.gr.dart';
import 'package:exposure/presentation/view/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  // 7203FF
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: avoid_field_initializers_in_const_classes
  final _appRouter = AppRouter();

  MyApp() : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Exposure",
      theme: ThemeData(
          primaryColor: CustomColor.background,
          accentColor: CustomColor.background,
          scaffoldBackgroundColor: CustomColor.background),
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
    );
  }
}
