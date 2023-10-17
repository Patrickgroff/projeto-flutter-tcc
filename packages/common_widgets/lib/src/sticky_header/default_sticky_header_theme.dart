part of common_widgets.sticky_header;

class DefaultStickyHeaderTheme extends ThemeExtension<DefaultStickyHeaderTheme> {
  final Color? background;
  final Color? title;
  final Color? subtitle;

  DefaultStickyHeaderTheme({required this.background, required this.title, required this.subtitle});
  @override
  ThemeExtension<DefaultStickyHeaderTheme> copyWith({Color? background, Color? title, Color? subTitle}) {
    return DefaultStickyHeaderTheme(
      background: background ?? this.background,
      title: title ?? this.title,
      subtitle: subTitle ?? subtitle,
    );
  }

  @override
  ThemeExtension<DefaultStickyHeaderTheme> lerp(ThemeExtension<DefaultStickyHeaderTheme>? other, double t) {
    if (other is! DefaultStickyHeaderTheme) {
      return this;
    }

    return DefaultStickyHeaderTheme(
      background: Color.lerp(background, other.background, t),
      title: Color.lerp(title, other.title, t),
      subtitle: Color.lerp(subtitle, other.subtitle, t),
    );
  }

  // Optional
  @override
  String toString() => '''DefaultStickyHeaderTheme(
    background: $background, 
    title: $title,
    subTitle: $subtitle, 
    )''';
}
