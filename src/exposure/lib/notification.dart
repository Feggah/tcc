// Top-level functions to handle background notifications
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

Future firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  try {
    await Firebase.initializeApp();
    final firestore = FirebaseFirestore.instance;
    final auth = FirebaseAuth.instance;
    final doc = firestore.collection("users").doc(auth.currentUser!.uid);
    await doc.set({"lastNotified": DateTime.now().millisecondsSinceEpoch},
        SetOptions(merge: true));
    // ignore: empty_catches
  } catch (e) {}
}
