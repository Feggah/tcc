import 'package:dartz/dartz.dart';
import 'package:exposure/domain/entities/location.dart';
import 'package:exposure/shared/failures.dart';

abstract class ILocationRepository {
  Future<Either<Failure, List<Location>>> listLocation();
}
