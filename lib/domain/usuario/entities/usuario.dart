import 'package:freezed_annotation/freezed_annotation.dart';

part 'usuario.freezed.dart';
part 'usuario.g.dart';

@freezed
class Usuario with _$Usuario {
  const Usuario._();

  @JsonSerializable()
  const factory Usuario({
    @JsonKey(includeIfNull: false) final int? id,
    @JsonKey(includeIfNull: false) final String? nome,
    @JsonKey(includeIfNull: false) final String? telefone,
    @JsonKey(includeIfNull: false) final String? senha,
  }) = _Usuario;

  String get iniciais => nome?.trim().isNotEmpty == true ? nome!.trim().split(RegExp(' +')).map((s) => s[0]).take(2).join().toUpperCase() : '';

  factory Usuario.fromJson(Map<String, dynamic> json) => _$UsuarioFromJson(json);
}
