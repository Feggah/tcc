import 'package:dartz/dartz.dart';
import 'package:exposure/domain/entities/location.dart';
import 'package:exposure/domain/repositories/i_location_repository.dart';
import 'package:exposure/shared/failures.dart';
import 'package:exposure/shared/usecase.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ListLocation implements UseCase<Future, NoParams> {
  final ILocationRepository repository;

  ListLocation(this.repository);

  @override
  Future<Either<Failure, List<Location>>> call(NoParams params) {
    return repository.listLocation();
  }
}
