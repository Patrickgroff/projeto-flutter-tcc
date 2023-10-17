part of common_widgets.sticky_header;

class DefaultStickyHeader extends StatelessWidget {
  final Widget? title;
  final Widget? subtitle;
  final Widget? leading;
  final Widget? trailing;
  final Widget? divider;
  final bool isTitleLarge;
  final void Function()? onTap;
  const DefaultStickyHeader({super.key, this.title, this.subtitle, this.leading, this.trailing, this.divider, this.isTitleLarge = true, this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final headerTheme = Theme.of(context).extension<DefaultStickyHeaderTheme>();
    final titleStyle = subtitle != null || !isTitleLarge
        ? TextStyle(color: headerTheme?.title, fontWeight: FontWeight.bold)
        : theme.textTheme.titleLarge?.copyWith(color: headerTheme?.title, fontWeight: FontWeight.bold);
    Widget widget = Container(
      color: headerTheme?.background,
      child: Material(
        child: ListTile(
          leading: leading,
          splashColor: headerTheme?.title?.withOpacity(.5),
          title: title != null ? DefaultTextStyle(style: titleStyle!, child: title!) : null,
          subtitle: subtitle != null ? DefaultTextStyle(style: TextStyle(color: headerTheme?.subtitle), child: subtitle!) : null,
          trailing: trailing,
          onTap: onTap,
        ),
      ),
    );
    if (divider != null) {
      widget = Column(
        children: [
          widget,
          divider!,
        ],
      );
    }

    return widget;
  }
}
