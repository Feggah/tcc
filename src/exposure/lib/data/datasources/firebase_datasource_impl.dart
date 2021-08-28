import 'package:exposure/data/datasources/i_firebase_datasource.dart';
import 'package:exposure/data/datasources/i_google_datasource.dart';
import 'package:exposure/data/models/location_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exposure/shared/exceptions.dart';
import 'package:exposure/shared/firestore_helpers.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IFirebaseDataSource)
class FirebaseDataSourceImpl implements IFirebaseDataSource {
  final FirebaseFirestore firestore;
  final IGoogleDataSource googleDataSource;

  FirebaseDataSourceImpl({
    required this.firestore,
    required this.googleDataSource,
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
        model.image =
            await googleDataSource.getPhotoImage(model.photoReference);
        list.add(model);
      }
      return list;
    } catch (e) {
      throw ServerException();
    }
  }
}
