// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i8;

import 'data/datasources/firebase_datasource_impl.dart' as _i13;
import 'data/datasources/google_datasource_impl.dart' as _i11;
import 'data/datasources/i_firebase_datasource.dart' as _i12;
import 'data/datasources/i_google_datasource.dart' as _i10;
import 'data/datasources/i_secret_datasource.dart' as _i6;
import 'data/datasources/secret_datasource_impl.dart' as _i7;
import 'data/repositories/location_repository_impl.dart' as _i15;
import 'domain/repositories/i_location_repository.dart' as _i14;
import 'domain/usecases/get_location.dart' as _i20;
import 'domain/usecases/list_location.dart' as _i16;
import 'domain/usecases/save_location.dart' as _i18;
import 'domain/usecases/search_location.dart' as _i19;
import 'injection.dart' as _i23;
import 'presentation/viewmodel/details_bloc.dart' as _i22;
import 'presentation/viewmodel/details_check_in_bloc.dart' as _i3;
import 'presentation/viewmodel/location_bloc.dart' as _i17;
import 'presentation/viewmodel/search_bloc.dart' as _i21;
import 'shared/network_info.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerThirdParties = _$RegisterThirdParties();
  gh.factory<_i3.DetailsCheckInBloc>(() => _i3.DetailsCheckInBloc());
  gh.lazySingleton<_i4.Dio>(() => registerThirdParties.client);
  gh.lazySingleton<_i5.FirebaseFirestore>(() => registerThirdParties.firestore);
  gh.lazySingleton<_i6.ISecretDataSource>(() => _i7.SecretDataSourceImpl());
  gh.lazySingleton<_i8.InternetConnectionChecker>(
      () => registerThirdParties.connectionChecker);
  gh.lazySingleton<_i9.NetworkInfo>(
      () => _i9.NetworkInfoImpl(get<_i8.InternetConnectionChecker>()));
  gh.lazySingleton<_i10.IGoogleDataSource>(() => _i11.GoogleDataSourceImpl(
      client: get<_i4.Dio>(), secretDataSource: get<_i6.ISecretDataSource>()));
  gh.lazySingleton<_i12.IFirebaseDataSource>(() => _i13.FirebaseDataSourceImpl(
      firestore: get<_i5.FirebaseFirestore>(),
      googleDataSource: get<_i10.IGoogleDataSource>()));
  gh.lazySingleton<_i14.ILocationRepository>(() => _i15.LocationRepositoryImpl(
      firebaseDataSource: get<_i12.IFirebaseDataSource>(),
      googleDataSource: get<_i10.IGoogleDataSource>(),
      networkInfo: get<_i9.NetworkInfo>()));
  gh.lazySingleton<_i16.ListLocation>(
      () => _i16.ListLocation(get<_i14.ILocationRepository>()));
  gh.factory<_i17.LocationBloc>(
      () => _i17.LocationBloc(listLocation: get<_i16.ListLocation>()));
  gh.lazySingleton<_i18.SaveLocation>(
      () => _i18.SaveLocation(get<_i14.ILocationRepository>()));
  gh.lazySingleton<_i19.SearchLocation>(
      () => _i19.SearchLocation(get<_i14.ILocationRepository>()));
  gh.lazySingleton<_i20.GetLocation>(
      () => _i20.GetLocation(get<_i14.ILocationRepository>()));
  gh.factory<_i21.SearchBloc>(
      () => _i21.SearchBloc(searchLocation: get<_i19.SearchLocation>()));
  gh.factory<_i22.DetailsBloc>(() => _i22.DetailsBloc(
      getLocation: get<_i20.GetLocation>(),
      saveLocation: get<_i18.SaveLocation>()));
  return get;
}

class _$RegisterThirdParties extends _i23.RegisterThirdParties {}
