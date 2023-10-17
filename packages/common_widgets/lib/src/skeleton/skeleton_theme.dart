part of common_widgets.skeleton;

class SkeletonTheme extends ThemeExtension<SkeletonTheme> {
  final Color? baseColor;
  final Color? highlightColor;

  SkeletonTheme({required this.baseColor, required this.highlightColor});
  @override
  ThemeExtension<SkeletonTheme> copyWith({Color? baseColor, Color? highlightColor}) {
    return SkeletonTheme(
      baseColor: baseColor ?? this.baseColor,
      highlightColor: highlightColor ?? this.highlightColor,
    );
  }

  @override
  ThemeExtension<SkeletonTheme> lerp(ThemeExtension<SkeletonTheme>? other, double t) {
    if (other is! SkeletonTheme) {
      return this;
    }

    return SkeletonTheme(
      baseColor: Color.lerp(baseColor, other.baseColor, t),
      highlightColor: Color.lerp(highlightColor, other.highlightColor, t),
    );
  }

  // Optional
  @override
  String toString() => '''SkeletonTheme(
    baseColor: $baseColor,
    highlightColor: $highlightColor, 
    )''';
}
