import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gest_car/domain/linha_do_tempo/entities/tipo_linha_do_tempo.enum.dart';

part 'linha_do_tempo.freezed.dart';
part 'linha_do_tempo.g.dart';

@freezed
class LinhaDoTempo with _$LinhaDoTempo {
  const LinhaDoTempo._();

  @JsonSerializable()
  const factory LinhaDoTempo({
    @JsonKey(includeIfNull: false) required final int id,
    @JsonKey(includeIfNull: false) required final TipoLinhaDoTempo tipo,
    @JsonKey(includeIfNull: false) required final String titulo,
    @JsonKey(includeIfNull: false) required final String observacao,
    @JsonKey(includeIfNull: false) required final double valor,
    @JsonKey(includeIfNull: false) required final int odometro,
    @JsonKey(includeIfNull: false) required final DateTime date,
    //TODO Add all atributes
  }) = _LinhaDoTempo;

  factory LinhaDoTempo.fromJson(Map<String, dynamic> json) => _$LinhaDoTempoFromJson(json);
}
