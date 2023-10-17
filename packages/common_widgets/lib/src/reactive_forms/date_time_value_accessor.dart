part of common_widgets.reactive_forms;

/// Defines a custom value accessor that converts from String to DateTime
/// and vice versa.
class AppDateTimeValueAccessor extends ControlValueAccessor<DateTime, String> {
  final DateFormat format;
  final DateTime? firstDate;
  final DateTime? lastDate;

  /// Constructs an instance of the [AppDateTimeValueAccessor]
  ///
  /// Can optionally provide [format] argument.
  AppDateTimeValueAccessor({this.firstDate, this.lastDate}) : format = DateFormat('dd/MM/yyyy');

  @override
  String modelToViewValue(DateTime? modelValue) {
    return modelValue == null ? '' : format.format(modelValue);
  }

  @override
  DateTime? viewToModelValue(String? viewValue) {
    if (viewValue == null || viewValue.isEmpty || viewValue.length < 8) return null;
    final parsedDate = format.parse(viewValue);
    if (firstDate != null && firstDate!.isAfter(parsedDate)) return null;
    if (lastDate != null && lastDate!.isBefore(parsedDate)) return null;

    return parsedDate;
  }
}
