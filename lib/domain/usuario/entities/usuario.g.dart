// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsuarioImpl _$$UsuarioImplFromJson(Map<String, dynamic> json) =>
    _$UsuarioImpl(
      id: json['id'] as int?,
      nome: json['nome'] as String?,
      telefone: json['telefone'] as String?,
      senha: json['senha'] as String?,
    );

Map<String, dynamic> _$$UsuarioImplToJson(_$UsuarioImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('nome', instance.nome);
  writeNotNull('telefone', instance.telefone);
  writeNotNull('senha', instance.senha);
  return val;
}
