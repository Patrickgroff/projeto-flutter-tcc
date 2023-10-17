part of common_widgets.reactive_forms;

// ignore: must_be_immutable
class AppReactivePasswordField<T> extends ReactiveFormField<T, String> {
  late bool obscureText;
  AppReactivePasswordField({
    super.key,
    String? formControlName,
    FormControl<T>? formControl,
    Map<String, ValidationMessageFunction>? validationMessages,
    ControlValueAccessor<T, String>? valueAccessor,
    ShowErrorsFunction? showErrors,
    InputDecoration decoration = const InputDecoration(),
    TextInputType? keyboardType,
    TextCapitalization textCapitalization = TextCapitalization.none,
    TextInputAction? textInputAction,
    TextStyle? style,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    TextAlign textAlign = TextAlign.start,
    TextAlignVertical? textAlignVertical,
    bool autofocus = false,
    bool readOnly = false,
    // ToolbarOptions? toolbarOptions,
    bool? showCursor,
    this.obscureText = true,
    String obscuringCharacter = '•',
    bool autocorrect = true,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    bool enableSuggestions = true,
    MaxLengthEnforcement? maxLengthEnforcement,
    int? maxLines = 1,
    int? minLines,
    bool expands = false,
    int? maxLength,
    ReactiveFormFieldCallback<T>? onTap,
    ReactiveFormFieldCallback<T>? onEditingComplete,
    List<TextInputFormatter>? inputFormatters,
    double cursorWidth = 2.0,
    double? cursorHeight,
    Radius? cursorRadius,
    Color? cursorColor,
    Brightness? keyboardAppearance,
    EdgeInsets scrollPadding = const EdgeInsets.all(20.0),
    bool enableInteractiveSelection = true,
    InputCounterWidgetBuilder? buildCounter,
    ScrollPhysics? scrollPhysics,
    ReactiveFormFieldCallback<T>? onSubmitted,
    FocusNode? focusNode,
    Iterable<String>? autofillHints,
    MouseCursor? mouseCursor,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    AppPrivateCommandCallback? onAppPrivateCommand,
    String? restorationId,
    ScrollController? scrollController,
    TextSelectionControls? selectionControls,
    BoxHeightStyle selectionHeightStyle = BoxHeightStyle.tight,
    BoxWidthStyle selectionWidthStyle = BoxWidthStyle.tight,
  }) : super(
            formControlName: formControlName,
            builder: (field) {
              final textfield = field.widget as AppReactivePasswordField;
              final showHideButton = ShowHidePasswordButton<T>(textfield: textfield, stateField: field);
              String? control = field.control.value is String? ? (field.control.value as String?) : null;
              return ReactiveTextField<T>(
                formControlName: formControlName,
                key: key,
                formControl: formControl,
                validationMessages: validationMessages,
                valueAccessor: valueAccessor,
                showErrors: showErrors,
                decoration: decoration.copyWith(suffixIcon: control?.isNotEmpty == true ? showHideButton : null),
                keyboardType: keyboardType,
                textCapitalization: textCapitalization,
                textInputAction: textInputAction,
                style: style,
                strutStyle: strutStyle,
                textDirection: textDirection,
                textAlign: textAlign,
                textAlignVertical: textAlignVertical,
                autofocus: autofocus,
                readOnly: readOnly,
                showCursor: showCursor,
                obscureText: textfield.obscureText,
                obscuringCharacter: obscuringCharacter,
                autocorrect: autocorrect,
                smartDashesType: smartDashesType,
                smartQuotesType: smartQuotesType,
                enableSuggestions: enableSuggestions,
                maxLengthEnforcement: maxLengthEnforcement,
                maxLines: maxLines,
                minLines: minLines,
                expands: expands,
                maxLength: maxLength,
                onTap: onTap,
                onEditingComplete: onEditingComplete,
                inputFormatters: inputFormatters,
                cursorWidth: cursorWidth,
                cursorHeight: cursorHeight,
                cursorRadius: cursorRadius,
                cursorColor: cursorColor,
                keyboardAppearance: keyboardAppearance,
                scrollPadding: scrollPadding,
                enableInteractiveSelection: enableInteractiveSelection,
                buildCounter: buildCounter,
                scrollPhysics: scrollPhysics,
                onSubmitted: onSubmitted,
                focusNode: focusNode,
                autofillHints: autofillHints,
                mouseCursor: mouseCursor,
                dragStartBehavior: dragStartBehavior,
                onAppPrivateCommand: onAppPrivateCommand,
                restorationId: restorationId,
                scrollController: scrollController,
                selectionControls: selectionControls,
                selectionHeightStyle: selectionHeightStyle,
                selectionWidthStyle: selectionWidthStyle,
              );
            });

  @override
  ReactiveFormFieldState<T, String> createState() => ReactiveFormFieldState<T, String>();
}

class ShowHidePasswordButton<T> extends StatelessWidget {
  final AppReactivePasswordField textfield;
  final ReactiveFormFieldState<T, String> stateField;
  const ShowHidePasswordButton({Key? key, required this.textfield, required this.stateField}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      // ignore: invalid_use_of_protected_member
      onPressed: () => stateField.setState(() {
        textfield.obscureText = !textfield.obscureText;
      }),
      padding: EdgeInsets.zero,
      splashRadius: 28,
      icon: Icon(
        textfield.obscureText ? Icons.visibility_off : Icons.visibility,
      ),
    );
  }
}
