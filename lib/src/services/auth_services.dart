import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/rendering.dart';
import 'package:food_door/src/models/user_model.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // sign up with email and password
  Future<bool> signUp({
    required String email,
    required String password,
    required String username,
  }) async {
    try {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) async {
        var _user = UserModel(
          uid: _auth.currentUser!.uid,
          username: username,
          email: email,
        ).toMap();

        await _firestore
            .collection('users')
            .doc(_auth.currentUser!.uid)
            .set(_user);
      });
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
