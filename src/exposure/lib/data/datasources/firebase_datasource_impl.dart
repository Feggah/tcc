import 'package:dartz/dartz.dart';
import 'package:exposure/data/datasources/i_firebase_datasource.dart';
import 'package:exposure/data/datasources/i_google_datasource.dart';
import 'package:exposure/data/models/location_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exposure/domain/entities/location.dart';
import 'package:exposure/domain/entities/user.dart';
import 'package:exposure/notification.dart';
import 'package:exposure/shared/exceptions.dart';
import 'package:exposure/shared/firestore_helpers.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IFirebaseDataSource)
class FirebaseDataSourceImpl implements IFirebaseDataSource {
  final FirebaseFirestore firestore;
  final IGoogleDataSource googleDataSource;
  final FirebaseAuth firebaseAuth;
  final FirebaseMessaging firebaseMessaging;

  FirebaseDataSourceImpl({
    required this.firestore,
    required this.googleDataSource,
    required this.firebaseAuth,
    required this.firebaseMessaging,
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

  @override
  Future<Unit> saveLocation(Location location) async {
    try {
      final userDoc = await firestore.userDocument();
      final locModel = LocationModel.fromDomain(location);
      locModel.arrival = location.arrival;
      locModel.departure = location.departure;

      await userDoc.locationCollection.add(locModel.toJson());
      return unit;
    } on FirebaseException {
      throw ServerException();
    }
  }

  @override
  Future<Option<User>> getSignedInUser() async {
    if (firebaseAuth.currentUser == null) {
      throw AuthException();
    }
    return optionOf(User(id: firebaseAuth.currentUser!.uid));
  }

  @override
  Future<Unit> signInAnonymously() async {
    try {
      await firebaseAuth.signInAnonymously();
      return unit;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<Unit> saveInfected() async {
    try {
      final userDoc = await firestore.userDocument();

      if (await hasSavedRecently(userDoc)) {
        throw AlreadySavedException();
      }

      await userDoc.set({"lastSaved": DateTime.now().millisecondsSinceEpoch},
          SetOptions(merge: true));

      final snapshot = await userDoc.locationCollection.get();
      for (final document in snapshot.docs) {
        final Map<String, dynamic> docData =
            // ignore: cast_nullable_to_non_nullable
            document.data() as Map<String, dynamic>;

        final infectedCollection = firestore.infectedCollection();
        infectedCollection.add({
          "arrival": docData["arrival"],
          "departure": docData["departure"],
          "latitude": docData["latitude"],
          "longitude": docData["longitude"],
        });
      }
      return unit;
    } on AlreadySavedException {
      throw AlreadySavedException();
    } catch (e) {
      throw ServerException();
    }
  }

  Future<bool> hasSavedRecently(DocumentReference<Object?> docRef) async {
    final value = await docRef.get();

    final dict = value.data() as Map<String, dynamic>?;
    if (dict == null || !dict.containsKey("lastSaved")) {
      return false;
    }

    final lastSaved = (dict["lastSaved"] as num).toInt();
    final threshold = DateTime.now()
        .subtract(const Duration(days: 14))
        .millisecondsSinceEpoch;
    return lastSaved > threshold;
    // if (lastSaved > threshold) {
    //   return true;
    // }

    // return false;
  }

  @override
  Future<Unit> requestPermission() async {
    await firebaseMessaging.requestPermission();
    return unit;
    // return settings.authorizationStatus.toString();
  }

  @override
  Future<String> getPermission() async {
    final settings = await firebaseMessaging.getNotificationSettings();
    return settings.authorizationStatus.toString();
  }

  @override
  Unit setupBackgroundNotification() {
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
    return unit;
  }

  @override
  Future<Unit> saveUserToken() async {
    try {
      final token = await firebaseMessaging.getToken();
      final userDoc = await firestore.userDocument();
      await userDoc.set({"fcmToken": token}, SetOptions(merge: true));
      return unit;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<Unit> saveLastNotificatedTime() async {
    try {
      final userDoc = await firestore.userDocument();
      await userDoc.set({"lastNotified": DateTime.now().millisecondsSinceEpoch},
          SetOptions(merge: true));
      return unit;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<bool> checkUserTokenExists() async {
    try {
      final userDoc = await firestore.userDocument();
      final snapshot = await userDoc.get();
      final data = snapshot.data() as Map<String, dynamic>?;
      if (data == null) {
        return false;
      }
      return data.containsKey("fcmToken");
    } catch (e) {
      throw ServerException();
    }
  }
}
