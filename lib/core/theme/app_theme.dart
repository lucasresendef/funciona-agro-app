import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract final class AppColors {
  static const forest = Color(0xFF1B5E20);
  static const forestDark = Color(0xFF11461B);
  static const olive = Color(0xFF4CAF50);
  static const straw = Color(0xFF8BC34A);
  static const earth = Color(0xFFFFC107);
  static const clay = Color(0xFFE8F5E9);
  static const canvas = Color(0xFFF5F5F5);
  static const mist = Color(0xFFEAF4EB);
  static const bark = Color(0xFF173C1A);
  static const pine = Color(0xFF0D2D13);
  static const danger = Color(0xFFB94834);
  static const dangerSoft = Color(0xFFF9DEDC);
}

abstract final class AppTheme {
  static ThemeData light() {
    final scheme =
        ColorScheme.fromSeed(
          seedColor: AppColors.forest,
          brightness: Brightness.light,
        ).copyWith(
          primary: AppColors.forest,
          onPrimary: Colors.white,
          primaryContainer: const Color(0xFFCDEACF),
          onPrimaryContainer: AppColors.pine,
          secondary: AppColors.olive,
          secondaryContainer: const Color(0xFFDDF2E0),
          tertiary: AppColors.straw,
          tertiaryContainer: const Color(0xFFF3F8D8),
          surface: Colors.white,
          surfaceContainerHighest: AppColors.mist,
          onSurface: AppColors.bark,
          onSurfaceVariant: const Color(0xFF4E6A50),
          outline: const Color(0xFFC7DCC8),
          error: AppColors.danger,
          errorContainer: AppColors.dangerSoft,
          onErrorContainer: const Color(0xFF5A1A14),
        );

    final baseTextTheme = GoogleFonts.poppinsTextTheme();
    final displayTheme = GoogleFonts.poppinsTextTheme(baseTextTheme);
    final textTheme = baseTextTheme.copyWith(
      bodyLarge: baseTextTheme.bodyLarge?.copyWith(fontSize: 14, height: 1.3),
      bodyMedium: baseTextTheme.bodyMedium?.copyWith(fontSize: 13, height: 1.3),
      bodySmall: baseTextTheme.bodySmall?.copyWith(
        fontSize: 11.5,
        height: 1.25,
      ),
      displayLarge: displayTheme.displayLarge,
      displayMedium: displayTheme.displayMedium,
      displaySmall: displayTheme.displaySmall,
      headlineLarge: displayTheme.headlineLarge?.copyWith(
        fontSize: 26,
        fontWeight: FontWeight.w800,
      ),
      headlineMedium: displayTheme.headlineMedium?.copyWith(
        fontSize: 21,
        fontWeight: FontWeight.w800,
      ),
      headlineSmall: displayTheme.headlineSmall?.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.w800,
      ),
      titleLarge: displayTheme.titleLarge?.copyWith(
        fontSize: 17,
        fontWeight: FontWeight.w800,
      ),
      titleMedium: displayTheme.titleMedium?.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
      titleSmall: displayTheme.titleSmall?.copyWith(
        fontSize: 12.5,
        fontWeight: FontWeight.w700,
      ),
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      scaffoldBackgroundColor: AppColors.canvas,
      textTheme: textTheme.apply(
        bodyColor: scheme.onSurface,
        displayColor: scheme.onSurface,
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.canvas,
        foregroundColor: scheme.onSurface,
        centerTitle: false,
        titleTextStyle: textTheme.titleLarge?.copyWith(
          color: scheme.onSurface,
          fontWeight: FontWeight.w800,
        ),
      ),
      cardTheme: CardThemeData(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSpacing.radiusXl),
          side: BorderSide(color: scheme.outline.withValues(alpha: 0.6)),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: scheme.surface,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.sm,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
          borderSide: BorderSide(color: scheme.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
          borderSide: BorderSide(color: scheme.outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
          borderSide: BorderSide(color: scheme.primary, width: 1.6),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
          borderSide: BorderSide(color: scheme.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
          borderSide: BorderSide(color: scheme.error, width: 1.6),
        ),
        labelStyle: textTheme.bodyMedium?.copyWith(
          color: scheme.onSurfaceVariant,
          fontWeight: FontWeight.w600,
        ),
        hintStyle: textTheme.bodyMedium?.copyWith(
          color: scheme.onSurfaceVariant.withValues(alpha: 0.78),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: scheme.primary,
          foregroundColor: scheme.onPrimary,
          elevation: 0,
          minimumSize: const Size(0, 46),
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.md,
            vertical: AppSpacing.sm,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
          ),
          textStyle: textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(0, 46),
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.md,
            vertical: AppSpacing.sm,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
          ),
          side: BorderSide(color: scheme.outline),
          textStyle: textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: scheme.secondaryContainer,
        selectedColor: scheme.primaryContainer,
        labelStyle: textTheme.labelLarge?.copyWith(
          color: scheme.onSurface,
          fontWeight: FontWeight.w600,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
        ),
        side: BorderSide.none,
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: AppColors.bark,
        contentTextStyle: textTheme.bodyMedium?.copyWith(color: Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
        ),
      ),
      dividerColor: scheme.outline.withValues(alpha: 0.55),
    );
  }
}
