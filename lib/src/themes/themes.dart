import 'package:dominic_flutter_template/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class AppThemes {
  AppThemes._();

  static const String fontFamily = FontFamily.openSans;

  static ThemeData light() => ThemeData(
        fontFamily: fontFamily,
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColorLight,

        /// dialog
        dialogTheme: DialogTheme(
          backgroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),

        /// Colors
        primaryColor: AppColors.primary,
        brightness: Brightness.light,

        /// Text
        textTheme: const TextTheme().apply(
          bodyColor: AppColors.textLight,
          displayColor: AppColors.textLight,
        ),

        /// ColorScheme
        colorScheme: const ColorScheme.light(
          primary: AppColors.primary,
          secondary: AppColors.secondary,
          onBackground: AppColors.gray_600
        ),

        // Appbar
        appBarTheme: const AppBarTheme(
          // default system appbar icon is white
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,
        ),

        /// input
        inputDecorationTheme: const InputDecorationTheme(),

        /// Button
        buttonTheme: const ButtonThemeData(),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            fixedSize: const Size.fromHeight(50),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            fixedSize: const Size.fromHeight(50),
          ),
        ),

        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(),
        ),
        iconTheme: const IconThemeData(),
      );

  static ThemeData dark() => ThemeData(
        fontFamily: fontFamily,
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColorDark,

        /// dialog
        dialogTheme: DialogTheme(
          backgroundColor: AppColors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),

        /// Colors
        primaryColor: AppColors.primary,
        brightness: Brightness.dark,

        /// Text
        textTheme: const TextTheme().apply(
          bodyColor: AppColors.textDark,
          displayColor: AppColors.textDark,
        ),

        /// ColorScheme
        colorScheme: const ColorScheme.dark(
          primary: AppColors.primary,
          secondary: AppColors.secondary,
          onBackground: AppColors.gray_200
        ),

        // Appbar
        appBarTheme: const AppBarTheme(
          // default system appbar icon is white
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.black,
        ),

        /// input
        inputDecorationTheme: const InputDecorationTheme(),

        /// Button
        buttonTheme: const ButtonThemeData(),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            fixedSize: const Size.fromHeight(50),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            fixedSize: const Size.fromHeight(50),
          ),
        ),

        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(),
        ),
        iconTheme: const IconThemeData(),
      );
}
