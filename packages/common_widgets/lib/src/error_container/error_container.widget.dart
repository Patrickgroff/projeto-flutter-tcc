part of common_widgets.error_container;

class ErrorContainerWidget extends StatelessWidget {
  final Function()? onPressed;
  final Widget message;
  final Color? textColor;
  const ErrorContainerWidget({super.key, this.onPressed, required this.message, this.textColor});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DefaultTextStyle(
              style: theme.textTheme.titleLarge!.copyWith(color: textColor ?? Colors.black45),
              textAlign: TextAlign.center,
              child: Padding(padding: const EdgeInsets.all(12.0), child: message)),
          if (onPressed != null)
            OutlinedButton.icon(
              onPressed: onPressed,
              icon: const Icon(Icons.restart_alt_rounded),
              label: const Text('Executar novamente'),
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.red,
                  side: BorderSide(
                    color: Colors.red.withOpacity(.36),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 42.0, vertical: 8),
                  shape: const StadiumBorder(
                    side: BorderSide(
                      color: Colors.red,
                    ),
                  )),
            )
        ],
      ),
    );
  }
}
