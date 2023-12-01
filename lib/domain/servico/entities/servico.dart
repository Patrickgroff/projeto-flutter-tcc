import 'package:common_widgets/common_widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'servico.freezed.dart';
part 'servico.g.dart';

@freezed
class Servico with _$Servico {
  const Servico._();

  @JsonSerializable()
  const factory Servico({
    @JsonKey(includeIfNull: false) final int? id,
    @JsonKey(includeIfNull: false) @AppDateTimeConverter() final DateTime? data,
    @JsonKey(includeIfNull: false) final double? odometro,
    @JsonKey(includeIfNull: false) final String? tipoServico,
    @JsonKey(includeIfNull: false) final double? valor,
    @JsonKey(includeIfNull: false) final String? observacao,
    @JsonKey(includeIfNull: false) final int? veiculoId,
    //TODO Add all atributes
  }) = _Servico;

  factory Servico.fromJson(Map<String, dynamic> json) => _$ServicoFromJson(json);
}
