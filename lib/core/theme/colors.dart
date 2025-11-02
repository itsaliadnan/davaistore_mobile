import 'package:flutter/material.dart';

class AppColors {
  // ---- Brand ----
  static const black = Color(0xFF22262A);
  static const blue = Color(0xFFC0D8EC);
  static const tosca = Color(0xFFC6E4DC);
  static const orange = Color(0xFFF2CFA9);

  // ---- Greyscale ----
  static const dark = Color(0xFF1E2225);
  static const darkGrey = Color(0xFF5D6367);
  static const grey1 = Color(0xFFA3ABB0);
  static const grey2 = Color(0xFFC5CDD1);
  static const grey3 = Color(0xFFDCE2E6);
  static const grey4 = Color(0xFFE9EDF1);
  static const light = Color(0xFFF6F9FB);
  static const white = Color(0xFFFFFFFF);

  // ---- Semantic ----
  static const success100 = Color(0xFF064E3B);
  static const success75 = Color(0xFF10B981);
  static const success50 = Color(0xFF34D399);
  static const success25 = Color(0xFFD1FAE5);
  static const success10 = Color(0xFFECFDF5);

  static const error100 = Color(0xFF7F1D1D);
  static const error75 = Color(0xFFEF4444);
  static const error50 = Color(0xFFF87171);
  static const error25 = Color(0xFFFEE2E2);
  static const error10 = Color(0xFFFEF2F2);

  static const warning100 = Color(0xFF7C2D12);
  static const warning75 = Color(0xFFF97316);
  static const warning50 = Color(0xFFFB923C);
  static const warning25 = Color(0xFFFFEED5);
  static const warning10 = Color(0xFFFFF7ED);

  static const info100 = Color(0xFF0C4A6E);
  static const info75 = Color(0xFF0EA5E9);
  static const info50 = Color(0xFF38BDF8);
  static const info25 = Color(0xFFE0F2FE);
  static const info10 = Color(0xFFF0F9FF);
}

// ---- ThemeExtension for Semantic Colors ----
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

  // Light preset
  static const light = SemanticColors(
    success: AppColors.success75,
    error: AppColors.error50,
    warning: AppColors.warning75,
    info: AppColors.info75,
  );

  // Dark preset
  static const dark = SemanticColors(
    success: AppColors.success50,
    error: AppColors.error50,
    warning: AppColors.warning50,
    info: AppColors.info50,
  );
}

class AppColorSchemes {
  static const light = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.black, // لون أساسي (عناوين / أزرار)
    onPrimary: AppColors.white,
    secondary: AppColors.blue,
    onSecondary: AppColors.black,
    tertiary: AppColors.tosca,
    onTertiary: AppColors.black,
    error: AppColors.error100,
    onError: AppColors.white,
    surface: AppColors.white, // ✅ خلفية البطاقات
    onSurface: AppColors.dark,
    surfaceVariant: AppColors.grey3,
    onSurfaceVariant: AppColors.grey1,
    outline: AppColors.grey2,
    outlineVariant: AppColors.grey3,
    shadow: Colors.black,
    scrim: Colors.black,
    inverseSurface: AppColors.darkGrey,
    inversePrimary: AppColors.blue,
    surfaceTint: AppColors.blue,
    background: AppColors.light, // ✅ خلفية الشاشات العامة
    onBackground: AppColors.black, // ✅ لون النص على الخلفية
  );

  static const dark = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.white,
    onPrimary: AppColors.black,
    secondary: AppColors.blue,
    onSecondary: AppColors.black,
    tertiary: AppColors.tosca,
    onTertiary: AppColors.black,
    error: AppColors.error75,
    onError: AppColors.black,
    surface: AppColors.dark, // ✅ خلفية البطاقات الداكنة
    onSurface: AppColors.white,
    surfaceVariant: AppColors.grey1,
    onSurfaceVariant: AppColors.grey2,
    outline: AppColors.grey2,
    outlineVariant: AppColors.grey4,
    shadow: Colors.black,
    scrim: Colors.black,
    inverseSurface: AppColors.light,
    inversePrimary: AppColors.blue,
    surfaceTint: AppColors.white,
    background: AppColors.black, // ✅ خلفية عامة للوضع الداكن
    onBackground: AppColors.white,
  );
}

class AppTheme {
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    colorScheme: AppColorSchemes.light,
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.light, // ✅ تأكيد أن الخلفية فاتحة
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.white,
      foregroundColor: AppColors.black,
      elevation: 0,
    ),
    extensions: const [SemanticColors.light],
  );

  static final ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    colorScheme: AppColorSchemes.dark,
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.dark, // ✅ تأكيد أن الخلفية داكنة
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.dark,
      foregroundColor: AppColors.white,
      elevation: 0,
    ),
    extensions: const [SemanticColors.dark],
  );
}

extension AppThemeContext on BuildContext {
  ThemeData get theme => Theme.of(this); // للحصول على ThemeData
  ColorScheme get colors => theme.colorScheme; // getter colors
  SemanticColors get semantic =>
      theme.extension<SemanticColors>()!; // للألوان الدلالية
}
