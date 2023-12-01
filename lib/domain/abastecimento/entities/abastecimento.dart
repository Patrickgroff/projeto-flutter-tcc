import 'package:common_widgets/common_widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'abastecimento.freezed.dart';
part 'abastecimento.g.dart';

@freezed
class Abastecimento with _$Abastecimento {
  const Abastecimento._();

  @JsonSerializable()
  const factory Abastecimento({
    @JsonKey(includeIfNull: false) final int? id,
    @JsonKey(includeIfNull: false) @AppDateTimeConverter() final DateTime? data,
    @JsonKey(includeIfNull: false) final double? odometro,
    @JsonKey(includeIfNull: false) final String? tipoCombustivel,
    @JsonKey(includeIfNull: false) final double? valor,
    @JsonKey(includeIfNull: false) final double? litros,
    @JsonKey(includeIfNull: false) final String? observacao,
    @JsonKey(includeIfNull: false) final int? veiculoId,
    //TODO Add all atributes
  }) = _Abastecimento;

  factory Abastecimento.fromJson(Map<String, dynamic> json) => _$AbastecimentoFromJson(json);
}
