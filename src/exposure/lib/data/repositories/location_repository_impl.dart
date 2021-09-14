import 'package:exposure/data/datasources/i_firebase_datasource.dart';
import 'package:exposure/data/datasources/i_google_datasource.dart';
import 'package:exposure/domain/entities/location.dart';
import 'package:dartz/dartz.dart';
import 'package:exposure/domain/entities/location_search_item.dart';
import 'package:exposure/domain/repositories/i_location_repository.dart';
import 'package:exposure/shared/exceptions.dart';
import 'package:exposure/shared/failures.dart';
import 'package:exposure/shared/network_info.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ILocationRepository)
class LocationRepositoryImpl implements ILocationRepository {
  final IFirebaseDataSource firebaseDataSource;
  final IGoogleDataSource googleDataSource;
  final NetworkInfo networkInfo;

  LocationRepositoryImpl({
    required this.firebaseDataSource,
    required this.googleDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<Location>>> listLocation() async {
    if (await networkInfo.isConnected) {
      try {
        return Right(await firebaseDataSource.listLocation());
      } on ServerException {
        return const Left(Failure.internalError());
      }
    } else {
      return const Left(Failure.noInternetConnection());
    }
  }

  @override
  Future<Either<Failure, List<LocationSearchItem>>> searchLocation(
      String name) async {
    if (await networkInfo.isConnected) {
      try {
        return Right(await googleDataSource.searchLocation(name));
      } on ServerException {
        return const Left(Failure.internalError());
      }
    } else {
      return const Left(Failure.noInternetConnection());
    }
  }

  @override
  Future<Either<Failure, Location>> getLocation(String id) async {
    if (await networkInfo.isConnected) {
      try {
        final Location model = await googleDataSource.getLocationDetails(id);
        model.image =
            await googleDataSource.getPhotoImage(model.photoReference);
        return Right(model);
      } on ServerException {
        return const Left(Failure.internalError());
      }
    } else {
      return const Left(Failure.noInternetConnection());
    }
  }

  @override
  Future<Either<Failure, Unit>> saveLocation(Location location) async {
    if (await networkInfo.isConnected) {
      try {
        return Right(await firebaseDataSource.saveLocation(location));
      } on ServerException {
        return const Left(Failure.internalError());
      }
    } else {
      return const Left(Failure.noInternetConnection());
    }
  }

  @override
  Future<Either<Failure, Unit>> saveInfected() async {
    if (await networkInfo.isConnected) {
      try {
        return Right(await firebaseDataSource.saveInfected());
      } on ServerException {
        return const Left(Failure.internalError());
      } on AlreadySavedException {
        return const Left(Failure.alreadySaved());
      }
    } else {
      return const Left(Failure.noInternetConnection());
    }
  }
}
