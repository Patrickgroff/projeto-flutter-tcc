import 'package:freezed_annotation/freezed_annotation.dart';

part 'receita.freezed.dart';
part 'receita.g.dart';

@freezed
class Receita with _$Receita {
  const Receita._();

  @JsonSerializable()
  const factory Receita({
    @JsonKey(includeIfNull: false) required final int id,
    @JsonKey(includeIfNull: false) required final String data,
    @JsonKey(includeIfNull: false) required final double odometro,
    @JsonKey(includeIfNull: false) required final double valor,
    @JsonKey(includeIfNull: false) required final String tipoReceita,
    @JsonKey(includeIfNull: false) required final String observacao,
    @JsonKey(includeIfNull: false) required final int veiculoId,
    //TODO Add all atributes
  }) = _Receita;

  factory Receita.fromJson(Map<String, dynamic> json) => _$ReceitaFromJson(json);
}
