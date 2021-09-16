// ignore_for_file: implementation_imports

import 'package:flutter/material.dart';
import 'package:food_door/src/constants/app_colors.dart';
import 'package:food_door/src/constants/app_images.dart';
import 'package:food_door/src/providers/login_provider.dart';
import 'package:food_door/src/utils/dimensions.dart';
import 'package:food_door/src/views/widgets/f_button.dart';
import 'package:food_door/src/views/widgets/i_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/src/provider.dart';

class ActionSection extends StatelessWidget {
  const ActionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // some spacing
        context.spacing(height: 4),
        // login action button
        FButton(
          // text label
          label: 'Sign In',
          // login function
          onPress: context.read<LoginProvider>().login,
        ),
        context.spacing(height: 4),
        // don't have an account redirect into sign up page
        // rich text
        RichText(
          // text span
          text: TextSpan(
            text: "Don't have an account?",
            // text style
            style: _textStyle(
              color: AppColors.defaultBlack,
            ),
            // text span
            // sign up text
            children: <TextSpan>[
              TextSpan(
                text: ' Signup',
                // text style
                style: _textStyle(
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        ),
        // spacer
        context.spacing(height: 4),
        // divider
        const Text('OR'),
        // spacer
        context.spacing(height: 4),
        // facebook sign in button
       const  IButton(
          label: 'Login with facebook',
          backgroundColor: AppColors.blue,
          image:AppImages.googleIcon,
        ),
        // spacer
        context.spacing(height: 3),
        // google sign in button
       const  IButton(
          label: 'Login with google',
          backgroundColor: AppColors.lightBlue,
          image:AppImages.googleIcon,
        ),
      ],
    );
  }

  TextStyle _textStyle({Color? color}) {
    return GoogleFonts.poppins(
      color: color,
      fontSize: 15,
    );
  }
}
