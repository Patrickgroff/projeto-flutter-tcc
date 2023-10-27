import 'package:freezed_annotation/freezed_annotation.dart';

part 'servico.freezed.dart';
part 'servico.g.dart';

@freezed
class Servico with _$Servico {
  const Servico._();

  @JsonSerializable()
  const factory Servico({
    @JsonKey(includeIfNull: false) required final int id,
    @JsonKey(includeIfNull: false) required final String data,
    @JsonKey(includeIfNull: false) required final double odometro,
    @JsonKey(includeIfNull: false) required final String tipoServico,
    @JsonKey(includeIfNull: false) required final double valor,
    @JsonKey(includeIfNull: false) required final String obervacao,
    @JsonKey(includeIfNull: false) required final int veiculoId,
    //TODO Add all atributes
  }) = _Servico;

  factory Servico.fromJson(Map<String, dynamic> json) => _$ServicoFromJson(json);
}
