import 'package:flutter/material.dart';
import 'package:food_door/src/views/screens/splash_screen/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Food Door',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
