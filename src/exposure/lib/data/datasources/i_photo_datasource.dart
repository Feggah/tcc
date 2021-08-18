import 'dart:typed_data';

abstract class IPhotoDataSource {
  Future<Uint8List> getPhotoImage(String photoReference);
}
