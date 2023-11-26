// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'linha_do_tempo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LinhaDoTempoImpl _$$LinhaDoTempoImplFromJson(Map<String, dynamic> json) =>
    _$LinhaDoTempoImpl(
      id: json['id'] as int,
      tipo: $enumDecode(_$TipoLinhaDoTempoEnumMap, json['tipo']),
      titulo: json['titulo'] as String,
      observacao: json['observacao'] as String,
      valor: (json['valor'] as num).toDouble(),
      odometro: json['odometro'] as int,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$LinhaDoTempoImplToJson(_$LinhaDoTempoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tipo': _$TipoLinhaDoTempoEnumMap[instance.tipo]!,
      'titulo': instance.titulo,
      'observacao': instance.observacao,
      'valor': instance.valor,
      'odometro': instance.odometro,
      'date': instance.date.toIso8601String(),
    };

const _$TipoLinhaDoTempoEnumMap = {
  TipoLinhaDoTempo.abastecimento: 'abastecimento',
  TipoLinhaDoTempo.despesa: 'despesa',
  TipoLinhaDoTempo.receita: 'receita',
  TipoLinhaDoTempo.servico: 'servico',
};
