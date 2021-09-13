import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:food_door/src/utils/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingFontStyle with Dimensions {
  textStyle(BuildContext context, {double? size=1, FontWeight? weight=FontWeight.normal}) =>
      GoogleFonts.poppins(
        fontSize: getHeight(context, size),
        fontWeight: weight,
      );
}
