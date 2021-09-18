import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:exposure/domain/entities/location.dart';
import 'package:exposure/domain/repositories/i_location_repository.dart';
import 'package:exposure/shared/failures.dart';
import 'package:exposure/shared/usecase.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SaveLocation implements UseCase<Future, Params> {
  final ILocationRepository repository;

  SaveLocation(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) {
    return repository.saveLocation(params.location);
  }
}

class Params extends Equatable {
  final Location location;

  const Params({required this.location});

  @override
  List<Object> get props => [location];
}
