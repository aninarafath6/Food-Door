import 'package:flutter/material.dart';
import 'package:food_door/src/constants/app_colors.dart';
import 'package:food_door/src/providers/login_provider.dart';
import 'package:food_door/src/views/widgets/toggle_button.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class InputActionSection extends StatelessWidget {
  const InputActionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // action section
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // toggle button
        Row(
          children: [
            // remember me toggle button
            ToggleButton(
              onToggle: context.read<LoginProvider>().toggleRemember,
            ),
            const SizedBox(width: 10),
            // remember me text
            Text(
              'Remember Me',
              style: GoogleFonts.poppins(
                color: AppColors.textGrey,
                fontSize: 12,
              ),
            ),
          ],
        ),
        // forgot Password button
        GestureDetector(
          onTap:(){
            // go to forgot password screen
          },
          child: Text(
            'Forget Password!',
            // google font
            style: GoogleFonts.poppins(
              color: AppColors.primary,
              fontSize: 13,
              fontWeight:FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
