import 'package:flutter/material.dart';
import 'package:food_door/src/constants/app_colors.dart';
import 'package:food_door/src/constants/app_sizes.dart';
import 'package:food_door/src/utils/dimensions.dart';
import 'package:food_door/src/views/screens/login_screen/sections/app_bar_section.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar area
      appBar: loginAppBar(context),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: AppSizes.DEFAULT_PADDING),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              context.spacing(height: 4),
              Text(
                'Welcome to',
                style: _textStyle(context),
              ),
              const Text(
                  'Enter you Phone number or Email address for sign in. Enjoy you food.')
            ],
          ),
        ),
      ),
    );
  }

  TextStyle _textStyle(BuildContext context) {
    return GoogleFonts.poppins(
      color: AppColors.defaultBlack,
      fontSize: context.getWidth(6),
      fontWeight: FontWeight.w500,
    );
  }
}
