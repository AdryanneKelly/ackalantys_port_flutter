import 'package:ackalantys/app/shared/themes/color_extension.dart';
import 'package:ackalantys/app/shared/themes/dark/dark_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DarkTheme {
  static final theme = ThemeData(
    primaryColor: DarkColors.primaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: DarkColors.surfaceBackground,
      elevation: 8,
    ),
    scaffoldBackgroundColor: DarkColors.surfaceBackground,
    textTheme: TextTheme(
      titleLarge: GoogleFonts.kalam(color: DarkColors.textPrimary),
      bodyMedium: GoogleFonts.heebo(
        color: DarkColors.textSecondary,
        fontSize: 18,
      ),
      bodyLarge: GoogleFonts.heebo(
        color: DarkColors.textPrimary,
        fontWeight: FontWeight.w500,
      ),
      displayMedium: GoogleFonts.kalam(
        color: DarkColors.textPrimary,
        fontWeight: FontWeight.w500,
      ),
      headlineLarge: GoogleFonts.heebo(
        color: DarkColors.textPrimary,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: GoogleFonts.heebo(
        color: DarkColors.textSecondary,
      ),
      labelLarge: GoogleFonts.heebo(
        color: DarkColors.textPrimary,
      ),
    ),
    primaryTextTheme: GoogleFonts.heeboTextTheme(),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: DarkColors.surfaceBackground,
      hintStyle: GoogleFonts.heebo(
        color: DarkColors.textSecondary,
      ),
      labelStyle: GoogleFonts.heebo(
        color: DarkColors.textSecondary,
      ),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        borderSide: BorderSide(
          color: DarkColors.secondaryColor,
        ),
      ),
      filled: true,
    ),
    scrollbarTheme: ScrollbarThemeData(
      thumbColor: MaterialStateProperty.all(DarkColors.secondaryColor),
      radius: const Radius.circular(16),
      thickness: MaterialStateProperty.all(4),
    ),
    cardTheme: CardTheme(
      color: DarkColors.surfacePrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    extensions: [
      ColorExtension(
        stackIconsColor: DarkColors.primaryColor,
        startIconButttonColor: DarkColors.surfaceSecondary,
        secondaryStartIconButtonColor: DarkColors.primaryColor,
        endIconButtonColor: DarkColors.primaryColor,
        secondaryEndIconButtonColor: DarkColors.surfaceSecondary,
        titleSessionColor: DarkColors.secondaryColor,
        contactSocialCardColor: DarkColors.surfaceTertiary,
        primaryGradientTitleColor: DarkColors.primaryColor,
        secondaryGradientTitleColor: DarkColors.secondaryColor,
        toggleThemeIconColor: DarkColors.secondaryColor,
        menuBackgroundColor: DarkColors.surfaceBackground,
        drawerMenuIconColor: DarkColors.secondaryColor,
      ),
    ],
  );
}
