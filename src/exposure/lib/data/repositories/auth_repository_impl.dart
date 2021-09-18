import 'package:exposure/data/datasources/i_firebase_datasource.dart';
import 'package:exposure/domain/entities/user.dart';
import 'package:dartz/dartz.dart';
import 'package:exposure/domain/repositories/i_auth_repository.dart';
import 'package:exposure/shared/exceptions.dart';
import 'package:exposure/shared/failures.dart';
import 'package:exposure/shared/network_info.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepositoryImpl implements IAuthRepository {
  final IFirebaseDataSource firebaseDataSource;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl({
    required this.firebaseDataSource,
    required this.networkInfo,
  });

  @override
  Future<Option<User>> getSignedInUser() async {
    try {
      return await firebaseDataSource.getSignedInUser();
    } on AuthException {
      return none();
    }
  }

  @override
  Future<Either<Failure, Unit>> signInAnonymously() async {
    if (await networkInfo.isConnected) {
      try {
        return Right(await firebaseDataSource.signInAnonymously());
      } on ServerException {
        return const Left(Failure.internalError());
      }
    } else {
      return const Left(Failure.noInternetConnection());
    }
  }
}
