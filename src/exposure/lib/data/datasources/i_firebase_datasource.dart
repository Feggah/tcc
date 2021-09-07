import 'package:dartz/dartz.dart';
import 'package:exposure/data/models/location_model.dart';
import 'package:exposure/domain/entities/location.dart';

abstract class IFirebaseDataSource {
  Future<List<LocationModel>> listLocation();
  Future<Unit> saveLocation(Location location);
}
