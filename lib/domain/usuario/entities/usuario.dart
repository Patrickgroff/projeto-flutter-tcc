import 'package:freezed_annotation/freezed_annotation.dart';

part 'usuario.freezed.dart';
part 'usuario.g.dart';

@freezed
class Usuario with _$Usuario {
  const Usuario._();

  @JsonSerializable()
  const factory Usuario({
    @JsonKey(includeIfNull: false) required final int id,
    @JsonKey(includeIfNull: false) required final String nome,
    @JsonKey(includeIfNull: false) required final String telefone,
    @JsonKey(includeIfNull: false) required final String senha,
  }) = _Usuario;

  factory Usuario.fromJson(Map<String, dynamic> json) => _$UsuarioFromJson(json);
}
