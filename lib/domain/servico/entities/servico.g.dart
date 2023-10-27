// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servico.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServicoImpl _$$ServicoImplFromJson(Map<String, dynamic> json) =>
    _$ServicoImpl(
      id: json['id'] as int,
      data: json['data'] as String,
      odometro: (json['odometro'] as num).toDouble(),
      tipoServico: json['tipoServico'] as String,
      valor: (json['valor'] as num).toDouble(),
      obervacao: json['obervacao'] as String,
      veiculoId: json['veiculoId'] as int,
    );

Map<String, dynamic> _$$ServicoImplToJson(_$ServicoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.data,
      'odometro': instance.odometro,
      'tipoServico': instance.tipoServico,
      'valor': instance.valor,
      'obervacao': instance.obervacao,
      'veiculoId': instance.veiculoId,
    };
