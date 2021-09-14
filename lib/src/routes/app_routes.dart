import 'package:flutter/cupertino.dart';
import 'package:food_door/src/views/screens/login_screen/login_screen.dart';
import 'package:food_door/src/views/screens/onboarding_screen/onboarding_screen.dart';
import 'package:food_door/src/views/screens/splash_screen/splash_screen.dart';

class AppRoutes {
  // initial route
  static const String initialRoute = SplashScreen.routeName;

  // app routes
  static Map<String, WidgetBuilder> routes = {
    // splash screen route
    SplashScreen.routeName: (context) => const SplashScreen(),
    // onboarding screen route
    OnboardingScreen.routeName: (context) => OnboardingScreen(),
    // Login screen route
    LoginScreen.routeName:(context)=>const LoginScreen(),
  };
}
