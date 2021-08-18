import 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    // This ID needs to be dynamically filled using the
    // authenticated user
    const String userId = "HZwvmSjsra0xh9EiO146";
    return FirebaseFirestore.instance.collection("users").doc(userId);
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get locationCollection => collection("locations");
}
