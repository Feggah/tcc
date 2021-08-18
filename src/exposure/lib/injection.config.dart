// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i7;

import 'data/datasources/i_location_datasource.dart' as _i11;
import 'data/datasources/i_photo_datasource.dart' as _i9;
import 'data/datasources/i_secret_datasource.dart' as _i5;
import 'data/datasources/location_datasource_impl.dart' as _i12;
import 'data/datasources/photo_datasource_impl.dart' as _i10;
import 'data/datasources/secret_datasource_impl.dart' as _i6;
import 'data/repositories/location_repository_impl.dart' as _i14;
import 'domain/repositories/i_location_repository.dart' as _i13;
import 'domain/usecases/list_location.dart' as _i15;
import 'injection.dart' as _i17;
import 'presentation/viewmodel/location_bloc.dart' as _i16;
import 'shared/network_info.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerThirdParties = _$RegisterThirdParties();
  gh.lazySingleton<_i3.Dio>(() => registerThirdParties.client);
  gh.lazySingleton<_i4.FirebaseFirestore>(() => registerThirdParties.firestore);
  gh.lazySingleton<_i5.ISecretDataSource>(() => _i6.SecretDataSourceImpl());
  gh.lazySingleton<_i7.InternetConnectionChecker>(
      () => registerThirdParties.connectionChecker);
  gh.lazySingleton<_i8.NetworkInfo>(
      () => _i8.NetworkInfoImpl(get<_i7.InternetConnectionChecker>()));
  gh.lazySingleton<_i9.IPhotoDataSource>(() => _i10.PhotoDataSourceImpl(
      client: get<_i3.Dio>(), secretDataSource: get<_i5.ISecretDataSource>()));
  gh.lazySingleton<_i11.ILocationDataSource>(() => _i12.LocationDataSourceImpl(
      firestore: get<_i4.FirebaseFirestore>(),
      photoDataSource: get<_i9.IPhotoDataSource>()));
  gh.lazySingleton<_i13.ILocationRepository>(() => _i14.LocationRepositoryImpl(
      dataSource: get<_i11.ILocationDataSource>(),
      networkInfo: get<_i8.NetworkInfo>()));
  gh.lazySingleton<_i15.ListLocation>(
      () => _i15.ListLocation(get<_i13.ILocationRepository>()));
  gh.factory<_i16.LocationBloc>(
      () => _i16.LocationBloc(listLocation: get<_i15.ListLocation>()));
  return get;
}

class _$RegisterThirdParties extends _i17.RegisterThirdParties {}
