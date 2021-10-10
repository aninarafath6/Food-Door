import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_door/src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
}
