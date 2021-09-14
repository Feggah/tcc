// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:dio/dio.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i10;

import 'data/datasources/firebase_datasource_impl.dart' as _i15;
import 'data/datasources/google_datasource_impl.dart' as _i13;
import 'data/datasources/i_firebase_datasource.dart' as _i14;
import 'data/datasources/i_google_datasource.dart' as _i12;
import 'data/datasources/i_secret_datasource.dart' as _i8;
import 'data/datasources/secret_datasource_impl.dart' as _i9;
import 'data/repositories/auth_repository_impl.dart' as _i25;
import 'data/repositories/location_repository_impl.dart' as _i17;
import 'domain/repositories/i_auth_repository.dart' as _i24;
import 'domain/repositories/i_location_repository.dart' as _i16;
import 'domain/usecases/get_location.dart' as _i23;
import 'domain/usecases/list_location.dart' as _i18;
import 'domain/usecases/save_infected.dart' as _i20;
import 'domain/usecases/save_location.dart' as _i21;
import 'domain/usecases/search_location.dart' as _i22;
import 'injection.dart' as _i30;
import 'presentation/viewmodel/auth_bloc.dart' as _i28;
import 'presentation/viewmodel/checkbox_bloc.dart' as _i3;
import 'presentation/viewmodel/details_bloc.dart' as _i29;
import 'presentation/viewmodel/details_check_in_bloc.dart' as _i4;
import 'presentation/viewmodel/infected_bloc.dart' as _i26;
import 'presentation/viewmodel/location_bloc.dart' as _i19;
import 'presentation/viewmodel/search_bloc.dart' as _i27;
import 'shared/network_info.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i8.ISecretDataSource>(() => _i9.SecretDataSourceImpl());
  gh.lazySingleton<_i10.InternetConnectionChecker>(
      () => registerThirdParties.connectionChecker);
  gh.lazySingleton<_i11.NetworkInfo>(
      () => _i11.NetworkInfoImpl(get<_i10.InternetConnectionChecker>()));
  gh.lazySingleton<_i12.IGoogleDataSource>(() => _i13.GoogleDataSourceImpl(
      client: get<_i5.Dio>(), secretDataSource: get<_i8.ISecretDataSource>()));
  gh.lazySingleton<_i14.IFirebaseDataSource>(() => _i15.FirebaseDataSourceImpl(
      firestore: get<_i7.FirebaseFirestore>(),
      googleDataSource: get<_i12.IGoogleDataSource>(),
      firebaseAuth: get<_i6.FirebaseAuth>()));
  gh.lazySingleton<_i16.ILocationRepository>(() => _i17.LocationRepositoryImpl(
      firebaseDataSource: get<_i14.IFirebaseDataSource>(),
      googleDataSource: get<_i12.IGoogleDataSource>(),
      networkInfo: get<_i11.NetworkInfo>()));
  gh.lazySingleton<_i18.ListLocation>(
      () => _i18.ListLocation(get<_i16.ILocationRepository>()));
  gh.factory<_i19.LocationBloc>(
      () => _i19.LocationBloc(listLocation: get<_i18.ListLocation>()));
  gh.lazySingleton<_i20.SaveInfected>(
      () => _i20.SaveInfected(get<_i16.ILocationRepository>()));
  gh.lazySingleton<_i21.SaveLocation>(
      () => _i21.SaveLocation(get<_i16.ILocationRepository>()));
  gh.lazySingleton<_i22.SearchLocation>(
      () => _i22.SearchLocation(get<_i16.ILocationRepository>()));
  gh.lazySingleton<_i23.GetLocation>(
      () => _i23.GetLocation(get<_i16.ILocationRepository>()));
  gh.lazySingleton<_i24.IAuthRepository>(() => _i25.AuthRepositoryImpl(
      firebaseDataSource: get<_i14.IFirebaseDataSource>(),
      networkInfo: get<_i11.NetworkInfo>()));
  gh.factory<_i26.InfectedBloc>(
      () => _i26.InfectedBloc(saveInfected: get<_i20.SaveInfected>()));
  gh.factory<_i27.SearchBloc>(
      () => _i27.SearchBloc(searchLocation: get<_i22.SearchLocation>()));
  gh.factory<_i28.AuthBloc>(
      () => _i28.AuthBloc(authRepository: get<_i24.IAuthRepository>()));
  gh.factory<_i29.DetailsBloc>(() => _i29.DetailsBloc(
      getLocation: get<_i23.GetLocation>(),
      saveLocation: get<_i21.SaveLocation>()));
  return get;
}

class _$RegisterThirdParties extends _i30.RegisterThirdParties {}
