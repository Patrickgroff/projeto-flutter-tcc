part of common_widgets.colors;

class AppColors {
  AppColors._();

  static const primaryLightColor = Color(0xFF00429B);
  static const secondaryLightColor = Color(0xFF006B60);
  static const tertiaryLightColor = Color(0xFF215ABD);
  static const neutralLightColor = Color(0xFF757780);

  static const primaryLightSubColor = Color(0xFF0F62D5);

  static const primaryDarkColor = Color(0xFFB0C6FF);
  static const secondaryDarkColor = Color(0xFF54DBC8);
  static const tertiaryDarkColor = Color(0xFFB0C6FF);
  static const neutralDarkColor = Color(0xFF8F9099);
  static const primaryDarkSubColor = Color(0xFFDAE8FC);

  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF215ABD),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFD9E2FF),
    onPrimaryContainer: Color(0xFF001945),
    secondary: Color(0xFF006B60),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFF74F8E4),
    onSecondaryContainer: Color(0xFF00201C),
    tertiary: Color(0xFF215ABD),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFD9E2FF),
    onTertiaryContainer: Color(0xFF001945),
    error: Color(0xFFBA1A1A),
    errorContainer: Color(0xFFFFDAD6),
    onError: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xFFF8FDFF),
    onBackground: Color(0xFF001F25),
    surface: Color(0xFFF8FDFF),
    onSurface: Color(0xFF001F25),
    surfaceVariant: Color(0xFFE1E2EC),
    onSurfaceVariant: Color(0xFF44464F),
    outline: Color(0xFF757780),
    onInverseSurface: Color(0xFFD6F6FF),
    inverseSurface: Color(0xFF00363F),
    inversePrimary: Color(0xFFB0C6FF),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF215ABD),
    outlineVariant: Color(0xFFC5C6D0),
    scrim: Color(0xFF000000),
  );

  static const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFB0C6FF),
    onPrimary: Color(0xFF002D6E),
    primaryContainer: Color(0xFF00429B),
    onPrimaryContainer: Color(0xFFD9E2FF),
    secondary: Color(0xFF54DBC8),
    onSecondary: Color(0xFF003731),
    secondaryContainer: Color(0xFF005048),
    onSecondaryContainer: Color(0xFF74F8E4),
    tertiary: Color(0xFFB0C6FF),
    onTertiary: Color(0xFF002D6E),
    tertiaryContainer: Color(0xFF00429B),
    onTertiaryContainer: Color(0xFFD9E2FF),
    error: Color(0xFFFFB4AB),
    errorContainer: Color(0xFF93000A),
    onError: Color(0xFF690005),
    onErrorContainer: Color(0xFFFFDAD6),
    background: Color(0xFF001F25),
    onBackground: Color(0xFFA6EEFF),
    surface: Color(0xFF001F25),
    onSurface: Color(0xFFA6EEFF),
    surfaceVariant: Color(0xFF44464F),
    onSurfaceVariant: Color(0xFFC5C6D0),
    outline: Color(0xFF8F9099),
    onInverseSurface: Color(0xFF001F25),
    inverseSurface: Color(0xFFA6EEFF),
    inversePrimary: Color(0xFF215ABD),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFFB0C6FF),
    outlineVariant: Color(0xFF44464F),
    scrim: Color(0xFF000000),
  );
}
