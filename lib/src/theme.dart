import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/app_colors.dart';

class Theming {
  ThemeData theme() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      // app bar theme.
      appBarTheme: appBarTheme(),
    );
  }

// app bar theme is a theme object that can be used to style the app bar.
  AppBarTheme appBarTheme() {
    return AppBarTheme(
      // app bar background color.
      backgroundColor: Colors.transparent,
      // app bar title alignment.
      centerTitle: true,
      // app bar elevation removed.
      elevation: 0,
      // app bar icon theme.
      iconTheme: const IconThemeData(color: AppColors.defaultBlack),
      // app bar title style.
      titleTextStyle: GoogleFonts.poppins(
        color: AppColors.defaultBlack,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      ),
    );
  }
}
