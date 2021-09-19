import 'package:flutter/material.dart';
import 'package:food_door/src/utils/navigation.dart';

AppBar loginAppBar(BuildContext context) {
  return AppBar(
    // leading button : back button on the left side of the app bar
    leading: IconButton(
      // splash radius
      splashRadius: 25,

      // pop navigation to the previous screen
      onPressed: () {
        // go to back screen
        context.pop();
      },

      icon: const Icon(
        // arrow back ios icon
        Icons.arrow_back_ios,
      ),
    ),

    // title of the app bar
    title: const Text('Sign In'),
  );
}
