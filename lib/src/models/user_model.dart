import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  final String? uid;
  final String? username;
  final String? email;

  UserModel({
    required this.uid,
    required this.username,
    required this.email,
  });

  // data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      email: map['email'],
      uid: map['uid'],
      username: map['username'],
    );
  }

  // data ro srver
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'username': username,
      'email': email,
    };
  }
}
