part of common_widgets.reactive_forms;

/// Format incoming numeric text to fit the format of ###-####
class AppBRPlacaVeiculoTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final int newTextLength = newValue.text.length;
    int selectionIndex = newValue.selection.end;
    int usedSubstringIndex = 0;
    final StringBuffer newText = StringBuffer();
    if (newTextLength >= 4 && !newValue.text.contains('-')) {
      newText.write('${newValue.text.substring(0, usedSubstringIndex = 3)}-');
      if (newValue.selection.end >= 3) selectionIndex++;
    }
    // Dump the rest.
    if (newTextLength >= usedSubstringIndex) newText.write(newValue.text.substring(usedSubstringIndex));
    return TextEditingValue(
      text: newText.toString(),
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }
}
