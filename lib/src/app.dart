import 'package:flutter/material.dart';
import 'package:food_door/src/providers/onboarding_provider.dart';
import 'package:food_door/src/views/screens/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // initializing the providers
    return MultiProvider(
      providers: [
        // onboarding provider
        ChangeNotifierProvider(create: (context)=>OnboardingProvider()),
      ],
      child: const MaterialApp(
        title: 'Food Door',
        debugShowCheckedModeBanner: false,
        // initial page of the app
        home: SplashScreen(),
      ),
    );
  }
}
