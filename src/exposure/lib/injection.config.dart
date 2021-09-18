// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:dio/dio.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:firebase_messaging/firebase_messaging.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i11;

import 'data/datasources/firebase_datasource_impl.dart' as _i16;
import 'data/datasources/google_datasource_impl.dart' as _i14;
import 'data/datasources/i_firebase_datasource.dart' as _i15;
import 'data/datasources/i_google_datasource.dart' as _i13;
import 'data/datasources/i_secret_datasource.dart' as _i9;
import 'data/datasources/secret_datasource_impl.dart' as _i10;
import 'data/repositories/auth_repository_impl.dart' as _i34;
import 'data/repositories/location_repository_impl.dart' as _i18;
import 'data/repositories/notification_repository_impl.dart' as _i20;
import 'domain/repositories/i_auth_repository.dart' as _i33;
import 'domain/repositories/i_location_repository.dart' as _i17;
import 'domain/repositories/i_notification_repository.dart' as _i19;
import 'domain/usecases/check_configuration.dart' as _i28;
import 'domain/usecases/configure_notifications.dart' as _i29;
import 'domain/usecases/create_notification.dart' as _i30;
import 'domain/usecases/get_location.dart' as _i31;
import 'domain/usecases/get_notification_permission.dart' as _i32;
import 'domain/usecases/list_location.dart' as _i21;
import 'domain/usecases/save_infected.dart' as _i23;
import 'domain/usecases/save_last_notificated_time.dart' as _i24;
import 'domain/usecases/save_location.dart' as _i25;
import 'domain/usecases/search_location.dart' as _i26;
import 'domain/usecases/set_background_notification_handler.dart' as _i27;
import 'injection.dart' as _i41;
import 'presentation/viewmodel/auth_bloc.dart' as _i38;
import 'presentation/viewmodel/checkbox_bloc.dart' as _i3;
import 'presentation/viewmodel/configure_notification_bloc.dart' as _i39;
import 'presentation/viewmodel/details_bloc.dart' as _i40;
import 'presentation/viewmodel/details_check_in_bloc.dart' as _i4;
import 'presentation/viewmodel/infected_bloc.dart' as _i35;
import 'presentation/viewmodel/location_bloc.dart' as _i22;
import 'presentation/viewmodel/notification_bloc.dart' as _i36;
import 'presentation/viewmodel/search_bloc.dart' as _i37;
import 'shared/network_info.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerThirdParties = _$RegisterThirdParties();
  gh.factory<_i3.CheckBoxBloc>(() => _i3.CheckBoxBloc());
  gh.factory<_i4.DetailsCheckInBloc>(() => _i4.DetailsCheckInBloc());
  gh.lazySingleton<_i5.Dio>(() => registerThirdParties.client);
  gh.lazySingleton<_i6.FirebaseAuth>(() => registerThirdParties.firebaseAuth);
  gh.lazySingleton<_i7.FirebaseFirestore>(() => registerThirdParties.firestore);
  gh.lazySingleton<_i8.FirebaseMessaging>(() => registerThirdParties.messaging);
  gh.lazySingleton<_i9.ISecretDataSource>(() => _i10.SecretDataSourceImpl());
  gh.lazySingleton<_i11.InternetConnectionChecker>(
      () => registerThirdParties.connectionChecker);
  gh.lazySingleton<_i12.NetworkInfo>(
      () => _i12.NetworkInfoImpl(get<_i11.InternetConnectionChecker>()));
  gh.lazySingleton<_i13.IGoogleDataSource>(() => _i14.GoogleDataSourceImpl(
      client: get<_i5.Dio>(), secretDataSource: get<_i9.ISecretDataSource>()));
  gh.lazySingleton<_i15.IFirebaseDataSource>(() => _i16.FirebaseDataSourceImpl(
      firestore: get<_i7.FirebaseFirestore>(),
      googleDataSource: get<_i13.IGoogleDataSource>(),
      firebaseAuth: get<_i6.FirebaseAuth>(),
      firebaseMessaging: get<_i8.FirebaseMessaging>()));
  gh.lazySingleton<_i17.ILocationRepository>(() => _i18.LocationRepositoryImpl(
      firebaseDataSource: get<_i15.IFirebaseDataSource>(),
      googleDataSource: get<_i13.IGoogleDataSource>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i19.INotificationRepository>(() =>
      _i20.NotificationRepositoryImpl(
          firebaseDataSource: get<_i15.IFirebaseDataSource>(),
          networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i21.ListLocation>(
      () => _i21.ListLocation(get<_i17.ILocationRepository>()));
  gh.factory<_i22.LocationBloc>(
      () => _i22.LocationBloc(listLocation: get<_i21.ListLocation>()));
  gh.lazySingleton<_i23.SaveInfected>(
      () => _i23.SaveInfected(get<_i17.ILocationRepository>()));
  gh.lazySingleton<_i24.SaveLastNotificatedTime>(
      () => _i24.SaveLastNotificatedTime(get<_i19.INotificationRepository>()));
  gh.lazySingleton<_i25.SaveLocation>(
      () => _i25.SaveLocation(get<_i17.ILocationRepository>()));
  gh.lazySingleton<_i26.SearchLocation>(
      () => _i26.SearchLocation(get<_i17.ILocationRepository>()));
  gh.lazySingleton<_i27.SetBackgroundNotificationHandler>(() =>
      _i27.SetBackgroundNotificationHandler(
          get<_i19.INotificationRepository>()));
  gh.lazySingleton<_i28.CheckConfiguration>(
      () => _i28.CheckConfiguration(get<_i19.INotificationRepository>()));
  gh.lazySingleton<_i29.ConfigureNotifications>(
      () => _i29.ConfigureNotifications(get<_i19.INotificationRepository>()));
  gh.lazySingleton<_i30.CreateNotification>(
      () => _i30.CreateNotification(get<_i19.INotificationRepository>()));
  gh.lazySingleton<_i31.GetLocation>(
      () => _i31.GetLocation(get<_i17.ILocationRepository>()));
  gh.lazySingleton<_i32.GetNotificationPermission>(() =>
      _i32.GetNotificationPermission(get<_i19.INotificationRepository>()));
  gh.lazySingleton<_i33.IAuthRepository>(() => _i34.AuthRepositoryImpl(
      firebaseDataSource: get<_i15.IFirebaseDataSource>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.factory<_i35.InfectedBloc>(
      () => _i35.InfectedBloc(saveInfected: get<_i23.SaveInfected>()));
  gh.factory<_i36.NotificationBloc>(() => _i36.NotificationBloc(
      createNotification: get<_i30.CreateNotification>(),
      saveLastNotifiedTime: get<_i24.SaveLastNotificatedTime>(),
      getNotificationPermission: get<_i32.GetNotificationPermission>(),
      setBackgroundNotificationHandler:
          get<_i27.SetBackgroundNotificationHandler>()));
  gh.factory<_i37.SearchBloc>(
      () => _i37.SearchBloc(searchLocation: get<_i26.SearchLocation>()));
  gh.factory<_i38.AuthBloc>(
      () => _i38.AuthBloc(authRepository: get<_i33.IAuthRepository>()));
  gh.factory<_i39.ConfigureNotificationBloc>(() =>
      _i39.ConfigureNotificationBloc(
          configureNotifications: get<_i29.ConfigureNotifications>(),
          checkConfiguration: get<_i28.CheckConfiguration>()));
  gh.factory<_i40.DetailsBloc>(() => _i40.DetailsBloc(
      getLocation: get<_i31.GetLocation>(),
      saveLocation: get<_i25.SaveLocation>()));
  return get;
}

class _$RegisterThirdParties extends _i41.RegisterThirdParties {}
