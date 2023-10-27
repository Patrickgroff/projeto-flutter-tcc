import 'package:freezed_annotation/freezed_annotation.dart';

part 'veiculo.freezed.dart';
part 'veiculo.g.dart';

@freezed
class Veiculo with _$Veiculo {
  const Veiculo._();

  @JsonSerializable()
  const factory Veiculo({
    @JsonKey(includeIfNull: false) required final int id,
    @JsonKey(includeIfNull: false) required final String veiculo,
    @JsonKey(includeIfNull: false) required final String apelido,
    @JsonKey(includeIfNull: false) required final String marca,
    @JsonKey(includeIfNull: false) required final int ano,
    @JsonKey(includeIfNull: false) required final String placa,
    @JsonKey(includeIfNull: false) required final double odometro,
    @JsonKey(includeIfNull: false) required final int usuarioId,
    //TODO Add all atributes
  }) = _Veiculo;

  factory Veiculo.fromJson(Map<String, dynamic> json) => _$VeiculoFromJson(json);
}
