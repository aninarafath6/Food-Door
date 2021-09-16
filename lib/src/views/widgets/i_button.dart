// ignore_for_file: implementation_imports

import 'package:flutter/material.dart';
import 'package:food_door/src/constants/app_sizes.dart';
import 'package:food_door/src/utils/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

class IButton extends StatelessWidget {
  const IButton({
    Key? key,
    this.label,
    this.onPress,
    this.backgroundColor,
    this.image,
  }) : super(key: key);

  // text
  final String? label;
  // on press method
  final Function()? onPress;
  // background color
  final Color? backgroundColor;
  // image
  final String? image;

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
          color: backgroundColor,
          // button radius
          borderRadius: BorderRadius.circular(AppSizes.defaultBorderRadius),
        ),
        child: Stack(
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppSizes.defaultBorderRadius - 3),
                  ),
                  child: Center(
                    child: Image.asset(image!),
                  ),
                )),
            context.spacing(width: 5),
            Center(
              child: Text(
                label!,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
