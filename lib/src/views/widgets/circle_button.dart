import 'package:flutter/material.dart';
import 'package:food_door/src/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    Key? key,
    this.size,
    this.fontWeight,
    this.color,
    this.text,
    this.background,
    this.onTap,
  }) : super(key: key);
  final double? size;
  final FontWeight? fontWeight;
  final Color? color;
  final String? text;
  final Color? background;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 60,
        // some decorations
        decoration: BoxDecoration(
          color: background!,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            // text transforming into uppercase
            text!.toUpperCase(),
            // applying text style
            style: GoogleFonts.poppins(
              color: color ?? AppColors.defaultBlack,
              fontWeight: fontWeight ?? FontWeight.normal,
              fontSize: size ?? 14,
            ),
          ),
        ),
      ),
    );
  }
}
