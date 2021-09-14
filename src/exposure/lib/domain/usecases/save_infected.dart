import 'package:dartz/dartz.dart';
import 'package:exposure/domain/repositories/i_location_repository.dart';
import 'package:exposure/shared/failures.dart';
import 'package:exposure/shared/usecase.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SaveInfected implements UseCase<Future, NoParams> {
  final ILocationRepository repository;

  SaveInfected(this.repository);

  @override
  Future<Either<Failure, Unit>> call(NoParams params) {
    return repository.saveInfected();
  }
}
