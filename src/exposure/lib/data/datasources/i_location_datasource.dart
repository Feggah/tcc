import 'package:exposure/data/models/location_model.dart';

abstract class ILocationDataSource {
  Future<List<LocationModel>> listLocation();
}
