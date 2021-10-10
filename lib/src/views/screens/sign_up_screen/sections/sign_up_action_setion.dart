// ignore_for_file: implementation_imports

import 'package:flutter/material.dart';
import 'package:food_door/src/constants/app_colors.dart';
import 'package:food_door/src/constants/app_images.dart';
import 'package:food_door/src/providers/login_provider.dart';
import 'package:food_door/src/providers/sign_up_provider.dart';
import 'package:food_door/src/utils/dimensions.dart';
import 'package:food_door/src/utils/navigation.dart';
import 'package:food_door/src/views/screens/sign_up_screen/sign_up_screen.dart';
import 'package:food_door/src/views/widgets/f_button.dart';
import 'package:food_door/src/views/widgets/i_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/src/provider.dart';

class SignUpActionSection extends StatelessWidget {
  const SignUpActionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // some spacing
        // context.spacing(height: 4),
        // login action button
        FButton(
          // text label
          label:
              context.watch<SignUpProvider>().loading ? 'Loading...' : 'Signup',
          // login function7
          onPress: context.read<SignUpProvider>().signUp,
        ),

        Column(
          children: List.generate(context.read<SignUpProvider>().errors.length,
              (index) => const Text('dfdf')),
        ),
        context.spacing(height: 4),
        // spacer
        // context.spacing(height: 4),
        // divider
        const Text('OR'),
        // spacer
        context.spacing(height: 4),
        // facebook sign in button
        const IButton(
          label: 'Login with facebook',
          backgroundColor: AppColors.blue,
          image: AppImages.googleIcon,
        ),
        // spacer
        context.spacing(height: 3),
        // google sign in button
        const IButton(
          label: 'Login with google',
          backgroundColor: AppColors.lightBlue,
          image: AppImages.googleIcon,
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
