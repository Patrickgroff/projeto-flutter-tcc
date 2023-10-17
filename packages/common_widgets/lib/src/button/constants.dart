part of common_widgets.button;

class AppButtonSize<T extends ButtonStyleButton> extends StatelessWidget {
  /// Bottão filho que sera redimencionado
  final T child;

  /// porcentagem com relação a tela,
  /// ex: 100 equivale a largura total da tela e 10 equivale a 10% da largura total da tela
  final double minWidthPercent;

  const AppButtonSize({super.key, required this.minWidthPercent, required this.child});

  factory AppButtonSize.small({required T child}) => AppButtonSize(minWidthPercent: 32, child: child);
  factory AppButtonSize.medium({required T child}) => AppButtonSize(minWidthPercent: 56, child: child);
  factory AppButtonSize.large({required T child}) => AppButtonSize(minWidthPercent: 72, child: child);
  factory AppButtonSize.full({required T child}) => AppButtonSize(minWidthPercent: 100, child: child);

  @override
  Widget build(BuildContext context) {
    final minWidth = minWidthPercent >= 100.0 ? double.infinity : (MediaQuery.of(context).size.width * (minWidthPercent / 100));
    if (child is ElevatedButton) {
      return ElevatedButtonTheme(
        data: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(minimumSize: Size(minWidth, 36.0))),
        child: child,
      );
    } else if (child is FilledButton) {
      return FilledButtonTheme(
        data: FilledButtonThemeData(style: ElevatedButton.styleFrom(minimumSize: Size(minWidth, 36.0))),
        child: child,
      );
    } else if (child is OutlinedButton) {
      return OutlinedButtonTheme(
        data: OutlinedButtonThemeData(style: ElevatedButton.styleFrom(minimumSize: Size(minWidth, 36.0))),
        child: child,
      );
    } else if (child is TextButton) {
      return TextButtonTheme(
        data: TextButtonThemeData(style: ElevatedButton.styleFrom(minimumSize: Size(minWidth, 36.0))),
        child: child,
      );
    }
    return ButtonTheme(
      minWidth: minWidth,
      child: child,
    );
  }
}
