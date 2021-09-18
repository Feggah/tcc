import 'package:dartz/dartz.dart';
import 'package:exposure/domain/entities/location.dart';
import 'package:exposure/domain/entities/location_search_item.dart';
import 'package:exposure/shared/failures.dart';

abstract class ILocationRepository {
  Future<Either<Failure, List<Location>>> listLocation();
  Future<Either<Failure, List<LocationSearchItem>>> searchLocation(String name);
  Future<Either<Failure, Location>> getLocation(String id);
  Future<Either<Failure, Unit>> saveLocation(Location location);
  Future<Either<Failure, Unit>> saveInfected();
}
