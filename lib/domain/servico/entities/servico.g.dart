// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servico.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServicoImpl _$$ServicoImplFromJson(Map<String, dynamic> json) =>
    _$ServicoImpl(
      id: json['id'] as int?,
      data: const AppDateTimeConverter().fromJson(json['data']),
      odometro: (json['odometro'] as num?)?.toDouble(),
      tipoServico: json['tipoServico'] as String?,
      valor: (json['valor'] as num?)?.toDouble(),
      observacao: json['observacao'] as String?,
      veiculoId: json['veiculoId'] as int?,
    );

Map<String, dynamic> _$$ServicoImplToJson(_$ServicoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('data', const AppDateTimeConverter().toJson(instance.data));
  writeNotNull('odometro', instance.odometro);
  writeNotNull('tipoServico', instance.tipoServico);
  writeNotNull('valor', instance.valor);
  writeNotNull('observacao', instance.observacao);
  writeNotNull('veiculoId', instance.veiculoId);
  return val;
}
