import 'package:freezed_annotation/freezed_annotation.dart';

part 'despesa.freezed.dart';
part 'despesa.g.dart';

@freezed
class Despesa with _$Despesa {
  const Despesa._();

  @JsonSerializable()
  const factory Despesa({
    @JsonKey(includeIfNull: false) required final int id,
    @JsonKey(includeIfNull: false) required final String data,
    @JsonKey(includeIfNull: false) required final double odometro,
    @JsonKey(includeIfNull: false) required final String tipoCombustivel,
    @JsonKey(includeIfNull: false) required final double valor,
    @JsonKey(includeIfNull: false) required final double litros,
    @JsonKey(includeIfNull: false) required final String obervacao,
    @JsonKey(includeIfNull: false) required final int veiculoId,
    //TODO Add all atributes
  }) = _Despesa;

  factory Despesa.fromJson(Map<String, dynamic> json) => _$DespesaFromJson(json);
}
