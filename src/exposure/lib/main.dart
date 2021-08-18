import 'package:exposure/injection.dart';
import 'package:exposure/presentation/view/colors.dart';
import 'package:exposure/presentation/view/navigation_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  // 7203FF
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exposure',
      theme: ThemeData(
          primaryColor: CustomColor.background,
          accentColor: CustomColor.background,
          scaffoldBackgroundColor: CustomColor.background),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const NavigationBar();
  }
}
