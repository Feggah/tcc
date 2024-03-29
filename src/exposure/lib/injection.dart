import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureInjection() => $initGetIt(getIt);

@module
abstract class RegisterThirdParties {
  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  @lazySingleton
  InternetConnectionChecker get connectionChecker =>
      InternetConnectionChecker();

  @lazySingleton
  Dio get client => Dio();

  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FirebaseMessaging get messaging => FirebaseMessaging.instance;
}
