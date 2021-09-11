// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:dio/dio.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i9;

import 'data/datasources/firebase_datasource_impl.dart' as _i14;
import 'data/datasources/google_datasource_impl.dart' as _i12;
import 'data/datasources/i_firebase_datasource.dart' as _i13;
import 'data/datasources/i_google_datasource.dart' as _i11;
import 'data/datasources/i_secret_datasource.dart' as _i7;
import 'data/datasources/secret_datasource_impl.dart' as _i8;
import 'data/repositories/auth_repository_impl.dart' as _i23;
import 'data/repositories/location_repository_impl.dart' as _i16;
import 'domain/repositories/i_auth_repository.dart' as _i22;
import 'domain/repositories/i_location_repository.dart' as _i15;
import 'domain/usecases/get_location.dart' as _i21;
import 'domain/usecases/list_location.dart' as _i17;
import 'domain/usecases/save_location.dart' as _i19;
import 'domain/usecases/search_location.dart' as _i20;
import 'injection.dart' as _i27;
import 'presentation/viewmodel/auth_bloc.dart' as _i25;
import 'presentation/viewmodel/details_bloc.dart' as _i26;
import 'presentation/viewmodel/details_check_in_bloc.dart' as _i3;
import 'presentation/viewmodel/location_bloc.dart' as _i18;
import 'presentation/viewmodel/search_bloc.dart' as _i24;
import 'shared/network_info.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerThirdParties = _$RegisterThirdParties();
  gh.factory<_i3.DetailsCheckInBloc>(() => _i3.DetailsCheckInBloc());
  gh.lazySingleton<_i4.Dio>(() => registerThirdParties.client);
  gh.lazySingleton<_i5.FirebaseAuth>(() => registerThirdParties.firebaseAuth);
  gh.lazySingleton<_i6.FirebaseFirestore>(() => registerThirdParties.firestore);
  gh.lazySingleton<_i7.ISecretDataSource>(() => _i8.SecretDataSourceImpl());
  gh.lazySingleton<_i9.InternetConnectionChecker>(
      () => registerThirdParties.connectionChecker);
  gh.lazySingleton<_i10.NetworkInfo>(
      () => _i10.NetworkInfoImpl(get<_i9.InternetConnectionChecker>()));
  gh.lazySingleton<_i11.IGoogleDataSource>(() => _i12.GoogleDataSourceImpl(
      client: get<_i4.Dio>(), secretDataSource: get<_i7.ISecretDataSource>()));
  gh.lazySingleton<_i13.IFirebaseDataSource>(() => _i14.FirebaseDataSourceImpl(
      firestore: get<_i6.FirebaseFirestore>(),
      googleDataSource: get<_i11.IGoogleDataSource>(),
      firebaseAuth: get<_i5.FirebaseAuth>()));
  gh.lazySingleton<_i15.ILocationRepository>(() => _i16.LocationRepositoryImpl(
      firebaseDataSource: get<_i13.IFirebaseDataSource>(),
      googleDataSource: get<_i11.IGoogleDataSource>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i17.ListLocation>(
      () => _i17.ListLocation(get<_i15.ILocationRepository>()));
  gh.factory<_i18.LocationBloc>(
      () => _i18.LocationBloc(listLocation: get<_i17.ListLocation>()));
  gh.lazySingleton<_i19.SaveLocation>(
      () => _i19.SaveLocation(get<_i15.ILocationRepository>()));
  gh.lazySingleton<_i20.SearchLocation>(
      () => _i20.SearchLocation(get<_i15.ILocationRepository>()));
  gh.lazySingleton<_i21.GetLocation>(
      () => _i21.GetLocation(get<_i15.ILocationRepository>()));
  gh.lazySingleton<_i22.IAuthRepository>(() => _i23.AuthRepositoryImpl(
      firebaseDataSource: get<_i13.IFirebaseDataSource>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.factory<_i24.SearchBloc>(
      () => _i24.SearchBloc(searchLocation: get<_i20.SearchLocation>()));
  gh.factory<_i25.AuthBloc>(
      () => _i25.AuthBloc(authRepository: get<_i22.IAuthRepository>()));
  gh.factory<_i26.DetailsBloc>(() => _i26.DetailsBloc(
      getLocation: get<_i21.GetLocation>(),
      saveLocation: get<_i19.SaveLocation>()));
  return get;
}

class _$RegisterThirdParties extends _i27.RegisterThirdParties {}
