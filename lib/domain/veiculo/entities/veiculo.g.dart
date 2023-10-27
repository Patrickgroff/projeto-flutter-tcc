// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'veiculo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VeiculoImpl _$$VeiculoImplFromJson(Map<String, dynamic> json) =>
    _$VeiculoImpl(
      id: json['id'] as int,
      veiculo: json['veiculo'] as String,
      apelido: json['apelido'] as String,
      marca: json['marca'] as String,
      ano: json['ano'] as int,
      placa: json['placa'] as String,
      odometro: (json['odometro'] as num).toDouble(),
      usuarioId: json['usuarioId'] as int,
    );

Map<String, dynamic> _$$VeiculoImplToJson(_$VeiculoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'veiculo': instance.veiculo,
      'apelido': instance.apelido,
      'marca': instance.marca,
      'ano': instance.ano,
      'placa': instance.placa,
      'odometro': instance.odometro,
      'usuarioId': instance.usuarioId,
    };
