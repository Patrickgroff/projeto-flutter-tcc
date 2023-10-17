part of common_widgets.reactive_forms;

class AppDoubleValueAccessor extends ControlValueAccessor<double?, String> {
  final int fractionDigits;
  final String? symbol;
  final String? customPattern;

  AppDoubleValueAccessor({
    this.fractionDigits = 2,
    this.symbol = '',
    this.customPattern = '\u00a4 #,###.#',
  });

  @override
  String modelToViewValue(double? modelValue) {
    return _formatCurrencyValue(modelValue);
  }

  @override
  double? viewToModelValue(String? viewValue) {
    return (viewValue == '' || viewValue == null) ? null : double.tryParse(viewValue.replaceAll(',', ''));
  }

  String _formatCurrencyValue(double? value) {
    if (value == null) {
      return '';
    }
    return NumberFormat.currency(decimalDigits: fractionDigits, symbol: symbol, customPattern: customPattern).format(value);
  }
}
