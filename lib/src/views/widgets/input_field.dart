
import 'package:flutter/material.dart';
import 'package:food_door/src/constants/app_colors.dart';
import 'package:food_door/src/constants/app_sizes.dart';
import 'package:food_door/src/utils/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    this.label,
    this.prefixIcon,
    this.suffixIcons,
    this.secure,
    this.onTap,
  }) : super(key: key);
  final String? label;
  final IconData? prefixIcon;
  final IconData? suffixIcons;
  final bool? secure;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1),
      margin: const EdgeInsets.only(bottom: 20),
      // width the size of the input field
      width: context.getWidth(100),
      // default height is the height of the input field = 50
      height: AppSizes.defaultInputHeight,
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        // border radius for Container
        borderRadius: BorderRadius.circular(10),
        // border color for Container
        border: Border.all(color: AppColors.lightBorderGrey),
        // padding for Container
      ),
      // we align the input field to the center of the container
      child: Center(
        // input field
        child: TextField(
          obscureText: secure!,
          cursorColor: AppColors.defaultBlack,
          // input decoration
          decoration: InputDecoration(
            // using remix icon
            prefixIcon: Icon(
              prefixIcon!,
              color: AppColors.grey,
            ),
            suffixIcon: GestureDetector(
              onTap: onTap,
              child: Icon(
                suffixIcons,
                color: AppColors.grey,
              ),
            ),

            // removed border
            border: InputBorder.none,
            // label
            hintText: label!,
            hintStyle: GoogleFonts.poppins(color: AppColors.grey),
          ),
        ),
      ),
    );
  }
}
