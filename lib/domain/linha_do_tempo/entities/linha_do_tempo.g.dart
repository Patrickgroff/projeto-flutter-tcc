// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'linha_do_tempo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LinhaDoTempoImpl _$$LinhaDoTempoImplFromJson(Map<String, dynamic> json) =>
    _$LinhaDoTempoImpl(
      id: json['id'] as int,
      titulo: json['titulo'] as String,
      observacao: json['observacao'] as String?,
      tipo: $enumDecode(_$TipoLinhaDoTempoEnumMap, json['tipo']),
      valor: (json['valor'] as num).toDouble(),
      litros: (json['litros'] as num?)?.toDouble(),
      odometro: (json['odometro'] as num?)?.toDouble(),
      veiculoId: json['veiculoId'] as int?,
      data: const AppDateTimeConverter().fromJson(json['data']),
    );

Map<String, dynamic> _$$LinhaDoTempoImplToJson(_$LinhaDoTempoImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'titulo': instance.titulo,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('observacao', instance.observacao);
  val['tipo'] = _$TipoLinhaDoTempoEnumMap[instance.tipo]!;
  val['valor'] = instance.valor;
  writeNotNull('litros', instance.litros);
  writeNotNull('odometro', instance.odometro);
  writeNotNull('veiculoId', instance.veiculoId);
  writeNotNull('data', const AppDateTimeConverter().toJson(instance.data));
  return val;
}

const _$TipoLinhaDoTempoEnumMap = {
  TipoLinhaDoTempo.abastecimento: 'abastecimento',
  TipoLinhaDoTempo.despesa: 'despesa',
  TipoLinhaDoTempo.receita: 'receita',
  TipoLinhaDoTempo.servico: 'servico',
};
