import 'package:exposure/data/models/location_model.dart';

abstract class IFirebaseDataSource {
  Future<List<LocationModel>> listLocation();
}
