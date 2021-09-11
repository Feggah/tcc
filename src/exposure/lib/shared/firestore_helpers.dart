import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exposure/domain/repositories/i_auth_repository.dart';
import 'package:exposure/injection.dart';
import 'package:exposure/shared/exceptions.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthRepository>().getSignedInUser();
    final user = userOption.getOrElse(() => throw AuthException());
    return FirebaseFirestore.instance.collection("users").doc(user.id);
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get locationCollection => collection("locations");
}
