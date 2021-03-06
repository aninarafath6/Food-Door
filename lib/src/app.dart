import 'package:flutter/material.dart';
import 'package:food_door/src/providers/login_provider.dart';
import 'package:food_door/src/providers/onboarding_provider.dart';
import 'package:food_door/src/providers/sign_up_provider.dart';
import 'package:food_door/src/routes/app_routes.dart';
import 'package:food_door/src/theme.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // initializing the providers
    return MultiProvider(
      providers: [
        // onboarding provider
        ChangeNotifierProvider(create: (context) => OnboardingProvider()),
        ChangeNotifierProvider(create: (context) => LoginProvider()),
        ChangeNotifierProvider(create: (context) => SignUpProvider()),
      ],
      child: MaterialApp(
        title: 'Food Door',
        debugShowCheckedModeBanner: false,
        theme: Theming().theme(),
        // initial route
        initialRoute: AppRoutes.initialRoute,
        // routes
        routes: AppRoutes.routes,
      ),
    );
  }
}
