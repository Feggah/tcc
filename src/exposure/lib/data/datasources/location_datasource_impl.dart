import 'package:exposure/data/datasources/i_location_datasource.dart';
import 'package:exposure/data/datasources/i_photo_datasource.dart';
import 'package:exposure/data/models/location_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exposure/shared/exceptions.dart';
import 'package:exposure/shared/firestore_helpers.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ILocationDataSource)
class LocationDataSourceImpl implements ILocationDataSource {
  final FirebaseFirestore firestore;
  final IPhotoDataSource photoDataSource;

  LocationDataSourceImpl({
    required this.firestore,
    required this.photoDataSource,
  });

  @override
  Future<List<LocationModel>> listLocation() async {
    try {
      final userDoc = await firestore.userDocument();
      final snapshot = await userDoc.locationCollection
          .orderBy("arrival", descending: true)
          .get();

      final List<LocationModel> list = [];
      for (final document in snapshot.docs) {
        final LocationModel model = LocationModel.fromFirestore(document);
        model.image = await photoDataSource.getPhotoImage(model.photoReference);
        list.add(model);
      }
      return list;
    } catch (e) {
      throw ServerException();
    }
  }
}
