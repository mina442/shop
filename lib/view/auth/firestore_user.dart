import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shop_app/view/auth/sginup/Models/UserModel.dart';


class FireStoreUser {
  final CollectionReference _userCollectionRef =
      FirebaseFirestore.instance.collection('Users');

  Future<void> addUserToFireStore(UserModel userModel) async {
    return await _userCollectionRef
        .doc(userModel.userId)
        .set(userModel.toJson());
  }
}