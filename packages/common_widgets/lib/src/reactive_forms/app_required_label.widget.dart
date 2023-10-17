part of common_widgets.reactive_forms;

class AppRequiredLabelWidget<T> extends StatelessWidget {
  final String? label;
  final String? formControlName;
  final FormControl<T>? formControl;
  const AppRequiredLabelWidget({super.key, required this.label, this.formControlName, this.formControl});

  @override
  Widget build(BuildContext context) {
    return ReactiveStatusListenableBuilder(
        formControlName: formControlName,
        formControl: formControl,
        builder: (context, control, child) => RichText(
                text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: [
                TextSpan(text: label),
                TextSpan(text: control.disabled || control.valid ? '' : ' *', style: const TextStyle(color: Colors.red)),
              ],
            )));
  }
}
