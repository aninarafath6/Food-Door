// ignore_for_file: implementation_imports

import 'package:flutter/material.dart';
import 'package:food_door/src/constants/app_colors.dart';
import 'package:food_door/src/constants/app_sizes.dart';
import 'package:food_door/src/utils/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

class FButton extends StatelessWidget {
  const FButton({
    Key? key, this.label, this.onPress,
  }) : super(key: key);

  // text
  final String? label;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        // button size
        height: 50,
        width: context.getWidth(100),
        // button decoration
        decoration: BoxDecoration(
          // color
          color: AppColors.primary,
          // button radius
          borderRadius: BorderRadius.circular(AppSizes.defaultBorderRadius),
        ),
        child: Center(
          child: Text(
            label!,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
