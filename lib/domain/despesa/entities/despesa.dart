import 'package:common_widgets/common_widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'despesa.freezed.dart';
part 'despesa.g.dart';

@freezed
class Despesa with _$Despesa {
  const Despesa._();

  @JsonSerializable()
  const factory Despesa({
    @JsonKey(includeIfNull: false) final int? id,
    @JsonKey(includeIfNull: false) @AppDateTimeConverter() final DateTime? data,
    @JsonKey(includeIfNull: false) final double? odometro,
    @JsonKey(includeIfNull: false) final String? tipoDespesa,
    @JsonKey(includeIfNull: false) final double? valor,
    @JsonKey(includeIfNull: false) final String? observacao,
    @JsonKey(includeIfNull: false) final int? veiculoId,
    //TODO Add all atributes
  }) = _Despesa;

  factory Despesa.fromJson(Map<String, dynamic> json) => _$DespesaFromJson(json);
}
