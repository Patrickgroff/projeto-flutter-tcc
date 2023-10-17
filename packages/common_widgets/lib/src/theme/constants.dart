part of common_widgets.theme;

class AppTheme {
  AppTheme._();

  static Brightness getBrightnessMode() {
    var brightness = SchedulerBinding.instance.window.platformBrightness;
    return brightness;
  }

  static Color getNavigationBarColor() {
    bool isDarkMode = getBrightnessMode() == Brightness.dark;
    return isDarkMode ? Colors.black26 : Colors.white30;
  }

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    // Colors
    brightness: Brightness.light,
    colorScheme: AppColors.lightColorScheme,
    inputDecorationTheme: const InputDecorationTheme(filled: true, prefixIconColor: AppColors.primaryLightColor),
    navigationRailTheme: NavigationRailThemeData(labelType: NavigationRailLabelType.selected, minWidth: 74, minExtendedWidth: 128, groupAlignment: -0.85),
    extensions: [GradientBackgroundTheme(darkColor: AppColors.primaryLightColor, lightColor: AppColors.primaryLightSubColor)],
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    // Colors
    brightness: Brightness.dark,
    colorScheme: AppColors.darkColorScheme,
    inputDecorationTheme: const InputDecorationTheme(filled: true, prefixIconColor: AppColors.secondaryDarkColor),
    navigationRailTheme: NavigationRailThemeData(labelType: NavigationRailLabelType.selected, minWidth: 74, minExtendedWidth: 128, groupAlignment: -0.85),
    extensions: [GradientBackgroundTheme(darkColor: AppColors.primaryDarkColor, lightColor: AppColors.primaryDarkSubColor)],
  );
}
