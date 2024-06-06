import 'package:flutter/material.dart';
import 'package:taramps/src/theme/app_text.dart';
import 'app_colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.cinzaEscuroLight,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: AppColors.corVermelhaClara,
        foregroundColor: AppColors.brancoLight,
        textStyle: AppText.fonteMediaDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.azulLight,
      foregroundColor: AppColors.brancoLight,
    ),
    textTheme: const TextTheme(
      bodySmall: AppText.fontePequenaLight,
      bodyMedium: AppText.fonteMediaLight,
      bodyLarge: AppText.fonteGrandeLight,
      headlineLarge: AppText.fonteGrandeBoldLight,
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: AppText.fonteMediaLight,
      hintStyle: AppText.fontePequenaLight,
      filled: true,
      fillColor: AppColors.cinzaClaroLight,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.cinzaEscuroLight),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: AppColors.cinzaEscuroLight,
          width: 2,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: Colors.red,
          width: 2,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: Colors.red,
          width: 2,
        ),
      ),
    ),
    cardTheme: CardTheme(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: AppColors.cinzaClaroCardLight,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.quasePretoDark,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: AppColors.corVermelha,
        foregroundColor: AppColors.brancoLight,
        textStyle: AppText.fonteMediaDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.azulClaroDark,
      foregroundColor: AppColors.brancoLight,
    ),
    textTheme: const TextTheme(
      bodySmall: AppText.fontePequenaDark,
      bodyMedium: AppText.fonteMediaDark,
      bodyLarge: AppText.fonteGrandeDark,
      headlineLarge: AppText.fonteGrandeBoldDark,
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: AppText.fonteMediaDark,
      hintStyle: AppText.fontePequenaDark,
      filled: true,
      fillColor: AppColors.cinzaEscuroLight,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.cinzaClaroDark),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: AppColors.cinzaClaroDark,
          width: 2,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: Colors.red,
          width: 2,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: Colors.red,
          width: 2,
        ),
      ),
    ),
    cardTheme: CardTheme(
      elevation: 4,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      color: AppColors.cinzaEscuroLight,
    ),

    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states){
        if(states.contains(WidgetState.disabled)){
          return AppColors.cinzaEscuroLight;
        }
        return AppColors.azulClaroDark;
      }),
      trackColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states){
        if(states.contains(WidgetState.disabled)){
          return Colors.grey.withOpacity(0.5);
        }
        return AppColors.cinzaEscuroLight;
      }),
      overlayColor: WidgetStateProperty.all<Color>(AppColors.cinzaMuitoEscuroDark),
      splashRadius: 16,
    )
  );
}
