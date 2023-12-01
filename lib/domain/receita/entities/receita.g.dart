// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receita.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReceitaImpl _$$ReceitaImplFromJson(Map<String, dynamic> json) =>
    _$ReceitaImpl(
      id: json['id'] as int?,
      data: const AppDateTimeConverter().fromJson(json['data']),
      odometro: (json['odometro'] as num?)?.toDouble(),
      valor: (json['valor'] as num?)?.toDouble(),
      tipoReceita: json['tipoReceita'] as String?,
      observacao: json['observacao'] as String?,
      veiculoId: json['veiculoId'] as int?,
    );

Map<String, dynamic> _$$ReceitaImplToJson(_$ReceitaImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('data', const AppDateTimeConverter().toJson(instance.data));
  writeNotNull('odometro', instance.odometro);
  writeNotNull('valor', instance.valor);
  writeNotNull('tipoReceita', instance.tipoReceita);
  writeNotNull('observacao', instance.observacao);
  writeNotNull('veiculoId', instance.veiculoId);
  return val;
}
