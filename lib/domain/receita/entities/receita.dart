import 'package:common_widgets/common_widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'receita.freezed.dart';
part 'receita.g.dart';

@freezed
class Receita with _$Receita {
  const Receita._();

  @JsonSerializable()
  const factory Receita({
    @JsonKey(includeIfNull: false) final int? id,
    @JsonKey(includeIfNull: false) @AppDateTimeConverter() final DateTime? data,
    @JsonKey(includeIfNull: false) final double? odometro,
    @JsonKey(includeIfNull: false) final double? valor,
    @JsonKey(includeIfNull: false) final String? tipoReceita,
    @JsonKey(includeIfNull: false) final String? observacao,
    @JsonKey(includeIfNull: false) final int? veiculoId,
    //TODO Add all atributes
  }) = _Receita;

  factory Receita.fromJson(Map<String, dynamic> json) => _$ReceitaFromJson(json);
}
