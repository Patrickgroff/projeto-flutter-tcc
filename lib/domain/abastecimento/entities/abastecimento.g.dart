// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abastecimento.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AbastecimentoImpl _$$AbastecimentoImplFromJson(Map<String, dynamic> json) =>
    _$AbastecimentoImpl(
      id: json['id'] as int,
      data: json['data'] as String,
      odometro: (json['odometro'] as num).toDouble(),
      tipoCombustivel: json['tipoCombustivel'] as String,
      valor: (json['valor'] as num).toDouble(),
      litros: (json['litros'] as num).toDouble(),
      obervacao: json['obervacao'] as String,
      veiculoId: json['veiculoId'] as int,
    );

Map<String, dynamic> _$$AbastecimentoImplToJson(_$AbastecimentoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.data,
      'odometro': instance.odometro,
      'tipoCombustivel': instance.tipoCombustivel,
      'valor': instance.valor,
      'litros': instance.litros,
      'obervacao': instance.obervacao,
      'veiculoId': instance.veiculoId,
    };
