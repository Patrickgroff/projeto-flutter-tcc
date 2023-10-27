import 'package:freezed_annotation/freezed_annotation.dart';

part 'abastecimento.freezed.dart';
part 'abastecimento.g.dart';

@freezed
class Abastecimento with _$Abastecimento {
  const Abastecimento._();

  @JsonSerializable()
  const factory Abastecimento({
    @JsonKey(includeIfNull: false) required final int id,
    @JsonKey(includeIfNull: false) required final String data,
    @JsonKey(includeIfNull: false) required final double odometro,
    @JsonKey(includeIfNull: false) required final String tipoCombustivel,
    @JsonKey(includeIfNull: false) required final double valor,
    @JsonKey(includeIfNull: false) required final double litros,
    @JsonKey(includeIfNull: false) required final String obervacao,
    @JsonKey(includeIfNull: false) required final int veiculoId,
    //TODO Add all atributes
  }) = _Abastecimento;

  factory Abastecimento.fromJson(Map<String, dynamic> json) => _$AbastecimentoFromJson(json);
}
