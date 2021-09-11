import 'package:dartz/dartz.dart';
import 'package:exposure/domain/entities/user.dart';
import 'package:exposure/shared/failures.dart';

abstract class IAuthRepository {
  Future<Option<User>> getSignedInUser();
  Future<Either<Failure, Unit>> signInAnonymously();
}
