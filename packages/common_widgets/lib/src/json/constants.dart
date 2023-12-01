part of common_widgets.json;

class AppDateTimeConverter implements JsonConverter<DateTime?, dynamic> {
  const AppDateTimeConverter();

  @override
  DateTime? fromJson(dynamic json) {
    if (json is DateTime) {
      return json;
    } else if (json is String) {
      return DateTime.parse(json);
    }
    return null;
  }

  @override
  dynamic toJson(DateTime? object) => object?.toString();
}
