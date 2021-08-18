import 'package:exposure/data/datasources/i_location_datasource.dart';
import 'package:exposure/domain/entities/location.dart';
import 'package:dartz/dartz.dart';
import 'package:exposure/domain/repositories/i_location_repository.dart';
import 'package:exposure/shared/exceptions.dart';
import 'package:exposure/shared/failures.dart';
import 'package:exposure/shared/network_info.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ILocationRepository)
class LocationRepositoryImpl implements ILocationRepository {
  final ILocationDataSource dataSource;
  final NetworkInfo networkInfo;

  LocationRepositoryImpl({
    required this.dataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<Location>>> listLocation() async {
    if (await networkInfo.isConnected) {
      try {
        return Right(await dataSource.listLocation());
      } on ServerException {
        return const Left(Failure.internalError());
      }
    } else {
      return const Left(Failure.noInternetConnection());
    }
  }
}
