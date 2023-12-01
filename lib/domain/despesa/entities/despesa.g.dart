// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'despesa.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DespesaImpl _$$DespesaImplFromJson(Map<String, dynamic> json) =>
    _$DespesaImpl(
      id: json['id'] as int?,
      data: const AppDateTimeConverter().fromJson(json['data']),
      odometro: (json['odometro'] as num?)?.toDouble(),
      tipoDespesa: json['tipoDespesa'] as String?,
      valor: (json['valor'] as num?)?.toDouble(),
      observacao: json['observacao'] as String?,
      veiculoId: json['veiculoId'] as int?,
    );

Map<String, dynamic> _$$DespesaImplToJson(_$DespesaImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('data', const AppDateTimeConverter().toJson(instance.data));
  writeNotNull('odometro', instance.odometro);
  writeNotNull('tipoDespesa', instance.tipoDespesa);
  writeNotNull('valor', instance.valor);
  writeNotNull('observacao', instance.observacao);
  writeNotNull('veiculoId', instance.veiculoId);
  return val;
}
