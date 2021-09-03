import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:exposure/domain/entities/location.dart';
import 'package:exposure/domain/repositories/i_location_repository.dart';
import 'package:exposure/shared/failures.dart';
import 'package:exposure/shared/usecase.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class GetLocation implements UseCase<Future, Params> {
  final ILocationRepository repository;

  GetLocation(this.repository);

  @override
  Future<Either<Failure, Location>> call(Params params) {
    return repository.getLocation(params.id);
  }
}

class Params extends Equatable {
  final String id;

  const Params({required this.id});

  @override
  List<Object> get props => [id];
}
