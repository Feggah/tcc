import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:exposure/domain/entities/location_search_item.dart';
import 'package:exposure/domain/repositories/i_location_repository.dart';
import 'package:exposure/shared/failures.dart';
import 'package:exposure/shared/usecase.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SearchLocation implements UseCase<Future, Params> {
  final ILocationRepository repository;

  SearchLocation(this.repository);

  @override
  Future<Either<Failure, List<LocationSearchItem>>> call(Params params) {
    return repository.searchLocation(params.name);
  }
}

class Params extends Equatable {
  final String name;

  const Params({required this.name});

  @override
  List<Object> get props => [name];
}
