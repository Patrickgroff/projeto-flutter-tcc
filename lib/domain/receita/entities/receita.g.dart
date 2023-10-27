// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receita.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReceitaImpl _$$ReceitaImplFromJson(Map<String, dynamic> json) =>
    _$ReceitaImpl(
      id: json['id'] as int,
      data: json['data'] as String,
      odometro: (json['odometro'] as num).toDouble(),
      valor: (json['valor'] as num).toDouble(),
      tipoReceita: json['tipoReceita'] as String,
      observacao: json['observacao'] as String,
      veiculoId: json['veiculoId'] as int,
    );

Map<String, dynamic> _$$ReceitaImplToJson(_$ReceitaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.data,
      'odometro': instance.odometro,
      'valor': instance.valor,
      'tipoReceita': instance.tipoReceita,
      'observacao': instance.observacao,
      'veiculoId': instance.veiculoId,
    };
