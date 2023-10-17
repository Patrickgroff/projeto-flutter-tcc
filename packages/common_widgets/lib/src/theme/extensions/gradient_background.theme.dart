part of common_widgets.theme;

class GradientBackgroundTheme extends ThemeExtension<GradientBackgroundTheme> {
  final Color? darkColor;
  final Color? lightColor;
  final LinearGradient gradient;

  GradientBackgroundTheme({required this.darkColor, required this.lightColor, LinearGradient? gradient})
      : gradient = gradient ??
            LinearGradient(
              colors: [if (darkColor != null) darkColor, if (lightColor != null) lightColor],
            );
  @override
  ThemeExtension<GradientBackgroundTheme> copyWith({Color? darkColor, Color? lightColor, LinearGradient? gradient}) {
    return GradientBackgroundTheme(
      darkColor: darkColor ?? this.darkColor,
      lightColor: lightColor ?? this.lightColor,
      gradient: gradient ?? this.gradient,
    );
  }

  @override
  ThemeExtension<GradientBackgroundTheme> lerp(ThemeExtension<GradientBackgroundTheme>? other, double t) {
    if (other is! GradientBackgroundTheme) {
      return this;
    }

    return GradientBackgroundTheme(
      darkColor: Color.lerp(darkColor, other.darkColor, t),
      lightColor: Color.lerp(lightColor, other.lightColor, t),
      gradient: LinearGradient.lerp(gradient, other.gradient, t),
    );
  }

  // Optional
  @override
  String toString() => '''GradientBackgroundTheme(
    darkColor: $darkColor,
    lightColor: $lightColor,
    gradient: $gradient,
    )''';
}
