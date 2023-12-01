// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abastecimento.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AbastecimentoImpl _$$AbastecimentoImplFromJson(Map<String, dynamic> json) =>
    _$AbastecimentoImpl(
      id: json['id'] as int?,
      data: const AppDateTimeConverter().fromJson(json['data']),
      odometro: (json['odometro'] as num?)?.toDouble(),
      tipoCombustivel: json['tipoCombustivel'] as String?,
      valor: (json['valor'] as num?)?.toDouble(),
      litros: (json['litros'] as num?)?.toDouble(),
      observacao: json['observacao'] as String?,
      veiculoId: json['veiculoId'] as int?,
    );

Map<String, dynamic> _$$AbastecimentoImplToJson(_$AbastecimentoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('data', const AppDateTimeConverter().toJson(instance.data));
  writeNotNull('odometro', instance.odometro);
  writeNotNull('tipoCombustivel', instance.tipoCombustivel);
  writeNotNull('valor', instance.valor);
  writeNotNull('litros', instance.litros);
  writeNotNull('observacao', instance.observacao);
  writeNotNull('veiculoId', instance.veiculoId);
  return val;
}
