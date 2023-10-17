part of common_widgets.bloc;

class CircularProgressStateWidget<B extends StateStreamable<S>, S> extends StatelessWidget {
  final Function(S state) isLoadingState;
  final Function(BuildContext context, S state) buildButton;
  final Widget Function(BuildContext context, S state, Widget child)? buidProgress;
  final double progressDimension;
  final double strokeWidth;
  const CircularProgressStateWidget({
    Key? key,
    required this.isLoadingState,
    required this.buildButton,
    this.progressDimension = 40,
    this.buidProgress,
    this.strokeWidth = 3.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, S>(builder: (context, state) {
      Widget child;
      if (isLoadingState(state)) {
        child = Center(child: SizedBox.square(dimension: progressDimension, child: CircularProgressIndicator(strokeWidth: strokeWidth)));
        child = buidProgress != null ? buidProgress!(context, state, child) : child;
      } else {
        child = buildButton(context, state);
      }

      return AnimatedSwitcher(duration: const Duration(milliseconds: 250), child: child);
    });
  }
}
