part of common_widgets.empty_container;

class EmptyContainerWidget extends StatelessWidget {
  final Widget? title;
  final Widget? subTitle;
  final Widget icon;
  final Widget? action;
  final TextAlign? align;

  const EmptyContainerWidget({super.key, this.title, required this.icon, this.action, this.subTitle, this.align = TextAlign.center});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Theme(data: theme.copyWith(iconTheme: IconThemeData(size: 112, opacity: .32, color: theme.brightness == Brightness.light ? Colors.black : Colors.white)), child: icon),
          if (title != null || subTitle != null || action != null) const SizedBox(height: 24),
          if (title != null) Opacity(opacity: .54, child: DefaultTextStyle(style: theme.textTheme.headlineMedium!, textAlign: align, child: title!)),
          if (title != null) const SizedBox(height: 12),
          if (subTitle != null)
            DefaultTextStyle(style: theme.textTheme.headlineSmall!.copyWith(color: theme.textTheme.headlineSmall?.color?.withOpacity(0.7)), textAlign: align, child: subTitle!),
          if (subTitle != null) const SizedBox(height: 12),
          if (action != null) action!,
          if (action != null) const SizedBox(height: 12),
        ],
      ),
    );
  }
}
