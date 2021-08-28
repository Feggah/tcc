import 'dart:typed_data';

import 'package:exposure/data/models/location_search_item_model.dart';

abstract class IGoogleDataSource {
  Future<Uint8List> getPhotoImage(String photoReference);
  Future<List<LocationSearchItemModel>> searchLocation(String name);
}
