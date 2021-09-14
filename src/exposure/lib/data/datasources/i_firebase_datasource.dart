import 'package:dartz/dartz.dart';
import 'package:exposure/data/models/location_model.dart';
import 'package:exposure/domain/entities/location.dart';
import 'package:exposure/domain/entities/user.dart';

abstract class IFirebaseDataSource {
  Future<List<LocationModel>> listLocation();
  Future<Unit> saveLocation(Location location);
  Future<Option<User>> getSignedInUser();
  Future<Unit> signInAnonymously();
  Future<Unit> saveInfected();
}
