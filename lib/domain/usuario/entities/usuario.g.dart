// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsuarioImpl _$$UsuarioImplFromJson(Map<String, dynamic> json) =>
    _$UsuarioImpl(
      id: json['id'] as int,
      nome: json['nome'] as String,
      telefone: json['telefone'] as String,
      senha: json['senha'] as String,
    );

Map<String, dynamic> _$$UsuarioImplToJson(_$UsuarioImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'telefone': instance.telefone,
      'senha': instance.senha,
    };
