import 'package:freezed_annotation/freezed_annotation.dart';

part 'veiculo.freezed.dart';
part 'veiculo.g.dart';

@freezed
class Veiculo with _$Veiculo {
  const Veiculo._();

  @JsonSerializable()
  const factory Veiculo({
    @JsonKey(includeIfNull: false) final int? id,
    @JsonKey(includeIfNull: false) final String? veiculo,
    @JsonKey(includeIfNull: false) final String? apelido,
    @JsonKey(includeIfNull: false) final String? marca,
    @JsonKey(includeIfNull: false) final int? ano,
    @JsonKey(includeIfNull: false) final String? placa,
    @JsonKey(includeIfNull: false) final double? volumeTanque,
    @JsonKey(includeIfNull: false) final double? odometro,
    @JsonKey(includeIfNull: false) final int? usuarioId,
    //TODO Add all atributes
  }) = _Veiculo;

  factory Veiculo.fromJson(Map<String, dynamic> json) => _$VeiculoFromJson(json);
}
