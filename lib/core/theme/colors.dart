import 'package:flutter/material.dart';

/// ===============================
/// 🎨 APP COLORS (Design System)
/// ===============================
class AppColors {
  // ---- Brand Identity (Luxury Gift Store) ----
  static const burgundy = Color(0xFF81162B);
  static const roseRed = Color(0xFFF10057);
  static const softGold = Color(0xFFFFD54F);
  static const deepGold = Color(0xFFC9A227);

  // ---- Core Neutrals ----
  static const dark = Color(0xFF1E2225);
  static const darkGrey = Color(0xFF5D6367);
  static const grey1 = Color(0xFFA3ABB0);
  static const grey2 = Color(0xFFC5CDD1);
  static const grey3 = Color(0xFFDCE2E6);
  static const grey4 = Color(0xFFE9EDF1);
  static const light = Color(0xFFF6F9FB);
  static const white = Color(0xFFFFFFFF);
  static const royalgold = Color(0xFFc9caa9);
  static const luxurgold = Color(0xFFffffff);

  // ---- Semantic ----
  static const success = Color(0xFF10B981);
  static const error = Color(0xFFEF4444);
  static const warning = Color(0xFFF97316);
  static const info = Color(0xFF0EA5E9);
}

/// ===============================
/// 🎭 Semantic Extension
/// ===============================
class SemanticColors extends ThemeExtension<SemanticColors> {
  final Color success;
  final Color error;
  final Color warning;
  final Color info;

  const SemanticColors({
    required this.success,
    required this.error,
    required this.warning,
    required this.info,
  });

  @override
  SemanticColors copyWith({
    Color? success,
    Color? error,
    Color? warning,
    Color? info,
  }) {
    return SemanticColors(
      success: success ?? this.success,
      error: error ?? this.error,
      warning: warning ?? this.warning,
      info: info ?? this.info,
    );
  }

  @override
  SemanticColors lerp(ThemeExtension<SemanticColors>? other, double t) {
    if (other is! SemanticColors) return this;
    return SemanticColors(
      success: Color.lerp(success, other.success, t)!,
      error: Color.lerp(error, other.error, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      info: Color.lerp(info, other.info, t)!,
    );
  }

  static const light = SemanticColors(
    success: AppColors.success,
    error: AppColors.error,
    warning: AppColors.warning,
    info: AppColors.info,
  );

  static const dark = SemanticColors(
    success: AppColors.success,
    error: AppColors.error,
    warning: AppColors.warning,
    info: AppColors.info,
  );
}

/// ===============================
/// 🌗 COLOR SCHEMES
/// ===============================
class AppColorSchemes {
  static const light = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.burgundy,
    onPrimary: AppColors.white,
    secondary: AppColors.softGold,
    onSecondary: AppColors.dark,
    tertiary: AppColors.grey3,
    onTertiary: AppColors.dark,
    error: AppColors.error,
    onError: AppColors.white,
    surface: AppColors.white,
    onSurface: AppColors.dark,
    surfaceContainerHighest: AppColors.grey4,
    onSurfaceVariant: AppColors.grey1,
    outline: AppColors.grey2,
    outlineVariant: AppColors.grey3,
    shadow: Colors.black,
    scrim: Colors.black,
    inverseSurface: AppColors.darkGrey,
    inversePrimary: AppColors.softGold,
    surfaceTint: AppColors.burgundy,
  );

  static const dark = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.softGold,
    onPrimary: AppColors.dark,
    secondary: AppColors.burgundy,
    onSecondary: AppColors.white,
    tertiary: AppColors.grey2,
    onTertiary: AppColors.white,
    error: AppColors.error,
    onError: AppColors.dark,
    surface: AppColors.dark,
    onSurface: AppColors.white,
    surfaceContainerHighest: AppColors.darkGrey,
    onSurfaceVariant: AppColors.grey2,
    outline: AppColors.grey2,
    outlineVariant: AppColors.grey1,
    shadow: Colors.black,
    scrim: Colors.black,
    inverseSurface: AppColors.light,
    inversePrimary: AppColors.burgundy,
    surfaceTint: AppColors.softGold,
  );
}

/// ===============================
/// 🧩 THEME
/// ===============================
class AppTheme {
  static final light = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    colorScheme: AppColorSchemes.light,
    scaffoldBackgroundColor: AppColors.light,
    extensions: const [SemanticColors.light],
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    colorScheme: AppColorSchemes.dark,
    scaffoldBackgroundColor: AppColors.dark,
    extensions: const [SemanticColors.dark],
  );
}

/// ===============================
/// 🌈 GRADIENTS (Organized)
/// ===============================
class AppGradients {
  /// Brand
  static const brandPrimary = LinearGradient(
    colors: [AppColors.burgundy, AppColors.roseRed],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  /// 🟡 Luxury Gold Gradient
  static const LinearGradient luxuryGold = LinearGradient(
    colors: [AppColors.royalgold, AppColors.luxurgold],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  /// 🔴 Brand Red Gradient (Old redGradient)
  static const wineRed = LinearGradient(
    colors: [AppColors.burgundy, AppColors.roseRed],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient twilightViolet = LinearGradient(
    colors: [Color(0xFF654EA3), Color(0xFFEAAFC8)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  /// Premium
  static const royalPurple = LinearGradient(
    colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const goldenHour = LinearGradient(
    colors: [Color(0xFFF7971E), Color(0xFFFFD200)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  /// Dark
  static const midnight = LinearGradient(
    colors: [Color(0xFF232526), Color(0xFF414345)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const deepSea = LinearGradient(
    colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}

/// ===============================
/// 🧊 GLASS SYSTEM
/// ===============================
class GlassColors {
  static Color background(Brightness brightness) =>
      brightness == Brightness.dark
      ? Colors.white.withValues(alpha: 0.06)
      : Colors.white.withValues(alpha: 0.20);

  static Color border(Brightness brightness) => brightness == Brightness.dark
      ? Colors.white.withValues(alpha: 0.12)
      : Colors.white.withValues(alpha: 0.30);
}

/// ===============================
/// 🧠 CONTEXT EXTENSION
/// ===============================
extension AppThemeContext on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => theme.colorScheme;
  SemanticColors get semantic => theme.extension<SemanticColors>()!;
}
