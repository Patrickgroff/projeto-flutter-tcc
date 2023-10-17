part of common_widgets.keyboard;

/// Usado para fechar o teclado quando clicar fora de um campo de texto ou dar scrool na tela
class KeyboardCloserContainer extends StatelessWidget {
  final Widget child;
  final bool hideOnTapOutside;
  final bool hideOnScroll;

  const KeyboardCloserContainer({super.key, required this.child, this.hideOnScroll = true, this.hideOnTapOutside = true});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (hideOnTapOutside) {
          FocusScope.of(context).unfocus();
        }
      },
      child: NotificationListener<ScrollNotification>(
        onNotification: (scrollNotification) {
          if (scrollNotification is UserScrollNotification && hideOnScroll) {
            // close keyboard
            FocusScope.of(context).unfocus();
          }
          return false;
        },
        child: child,
      ),
    );
  }
}
