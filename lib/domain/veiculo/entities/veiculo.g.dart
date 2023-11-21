// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'veiculo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VeiculoImpl _$$VeiculoImplFromJson(Map<String, dynamic> json) =>
    _$VeiculoImpl(
      id: json['id'] as int?,
      veiculo: json['veiculo'] as String?,
      apelido: json['apelido'] as String?,
      marca: json['marca'] as String?,
      ano: json['ano'] as int?,
      placa: json['placa'] as String?,
      volumeTanque: (json['volumeTanque'] as num?)?.toDouble(),
      odometro: (json['odometro'] as num?)?.toDouble(),
      usuarioId: json['usuarioId'] as int?,
    );

Map<String, dynamic> _$$VeiculoImplToJson(_$VeiculoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('veiculo', instance.veiculo);
  writeNotNull('apelido', instance.apelido);
  writeNotNull('marca', instance.marca);
  writeNotNull('ano', instance.ano);
  writeNotNull('placa', instance.placa);
  writeNotNull('volumeTanque', instance.volumeTanque);
  writeNotNull('odometro', instance.odometro);
  writeNotNull('usuarioId', instance.usuarioId);
  return val;
}
