import 'package:flutter/material.dart';
import 'package:food_door/src/constants/app_colors.dart';
import 'package:food_door/src/utils/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeMessageSection extends StatelessWidget {
  const WelcomeMessageSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // message alignment
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // spacer
        context.spacing(height: 4),
        // welcome section
        Text(
          'Welcome to',
          // text style
          style: _textStyle(
            context,
            fontSize: context.getWidth(6),
            fontWeight: FontWeight.w500,
          ),
        ),
        context.spacing(height: 1),
        // dis message
        Text(
          'Enter you Phone number or Email\naddress for sign in. Enjoy you food.',
          // message style
          style: _textStyle(context, fontSize: context.getWidth(3.8)),
        ),
      ],
    );
  }

  TextStyle _textStyle(BuildContext context,
      {double? fontSize, FontWeight? fontWeight}) {
    return GoogleFonts.poppins(
      color: AppColors.defaultBlack,
      fontSize: fontSize ?? 12,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }
}
