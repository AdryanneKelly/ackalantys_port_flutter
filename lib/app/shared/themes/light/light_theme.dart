import 'package:ackalantys/app/shared/themes/color_extension.dart';
import 'package:ackalantys/app/shared/themes/light/light_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LightTheme {
  static final theme = ThemeData(
    primaryColor: LightColors.primaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: LightColors.primaryColor,
      elevation: 12,
    ),
    scaffoldBackgroundColor: LightColors.surfaceBackground,
    textTheme: TextTheme(
      titleLarge: GoogleFonts.kalam(color: LightColors.textTertiary),
      bodyMedium: GoogleFonts.heebo(
        color: LightColors.textSecondary,
      ),
      bodyLarge: GoogleFonts.heebo(
        color: LightColors.textPrimary,
        fontWeight: FontWeight.w500,
      ),
      displayMedium: GoogleFonts.kalam(
        color: LightColors.textPrimary,
        fontWeight: FontWeight.w500,
      ),
      headlineLarge: GoogleFonts.heebo(
        color: LightColors.textPrimary,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: GoogleFonts.heebo(
        color: LightColors.textSecondary,
      ),
      labelLarge: GoogleFonts.heebo(
        color: LightColors.textTertiary,
      ),
    ),
    primaryTextTheme: GoogleFonts.heeboTextTheme(),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: LightColors.surfaceBackground,
      hintStyle: GoogleFonts.heebo(
        color: LightColors.textSecondary,
      ),
      labelStyle: GoogleFonts.heebo(
        color: LightColors.textSecondary,
      ),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        borderSide: BorderSide.none,
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        borderSide: BorderSide(
          color: LightColors.secondaryColor,
        ),
      ),
      filled: true,
    ),
    scrollbarTheme: ScrollbarThemeData(
      thumbColor: MaterialStateProperty.all(LightColors.secondaryColor),
      radius: const Radius.circular(16),
      thickness: MaterialStateProperty.all(4),
    ),
    cardTheme: CardTheme(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    extensions: [
      ColorExtension(
        stackIconsColor: LightColors.primaryColor,
        startIconButttonColor: LightColors.surfaceSecondary,
        secondaryStartIconButtonColor: LightColors.primaryColor,
        endIconButtonColor: LightColors.primaryColor,
        secondaryEndIconButtonColor: LightColors.surfaceSecondary,
        titleSessionColor: LightColors.secondaryColor,
        contactSocialCardColor: LightColors.surfaceTertiary,
        primaryGradientTitleColor: LightColors.primaryColor,
        secondaryGradientTitleColor: LightColors.secondaryColor,
        toggleThemeIconColor: LightColors.secondaryColor,
        menuBackgroundColor: LightColors.primaryColor
      ),
    ],
  );
}
