// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'veiculo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Veiculo _$VeiculoFromJson(Map<String, dynamic> json) {
  return _Veiculo.fromJson(json);
}

/// @nodoc
mixin _$Veiculo {
  @JsonKey(includeIfNull: false)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get veiculo => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get marca => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get ano => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get placa => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  double? get odometro => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get usuarioId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VeiculoCopyWith<Veiculo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VeiculoCopyWith<$Res> {
  factory $VeiculoCopyWith(Veiculo value, $Res Function(Veiculo) then) =
      _$VeiculoCopyWithImpl<$Res, Veiculo>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      @JsonKey(includeIfNull: false) String? veiculo,
      @JsonKey(includeIfNull: false) String? marca,
      @JsonKey(includeIfNull: false) int? ano,
      @JsonKey(includeIfNull: false) String? placa,
      @JsonKey(includeIfNull: false) double? odometro,
      @JsonKey(includeIfNull: false) int? usuarioId});
}

/// @nodoc
class _$VeiculoCopyWithImpl<$Res, $Val extends Veiculo>
    implements $VeiculoCopyWith<$Res> {
  _$VeiculoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? veiculo = freezed,
    Object? marca = freezed,
    Object? ano = freezed,
    Object? placa = freezed,
    Object? odometro = freezed,
    Object? usuarioId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      veiculo: freezed == veiculo
          ? _value.veiculo
          : veiculo // ignore: cast_nullable_to_non_nullable
              as String?,
      marca: freezed == marca
          ? _value.marca
          : marca // ignore: cast_nullable_to_non_nullable
              as String?,
      ano: freezed == ano
          ? _value.ano
          : ano // ignore: cast_nullable_to_non_nullable
              as int?,
      placa: freezed == placa
          ? _value.placa
          : placa // ignore: cast_nullable_to_non_nullable
              as String?,
      odometro: freezed == odometro
          ? _value.odometro
          : odometro // ignore: cast_nullable_to_non_nullable
              as double?,
      usuarioId: freezed == usuarioId
          ? _value.usuarioId
          : usuarioId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VeiculoImplCopyWith<$Res> implements $VeiculoCopyWith<$Res> {
  factory _$$VeiculoImplCopyWith(
          _$VeiculoImpl value, $Res Function(_$VeiculoImpl) then) =
      __$$VeiculoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      @JsonKey(includeIfNull: false) String? veiculo,
      @JsonKey(includeIfNull: false) String? marca,
      @JsonKey(includeIfNull: false) int? ano,
      @JsonKey(includeIfNull: false) String? placa,
      @JsonKey(includeIfNull: false) double? odometro,
      @JsonKey(includeIfNull: false) int? usuarioId});
}

/// @nodoc
class __$$VeiculoImplCopyWithImpl<$Res>
    extends _$VeiculoCopyWithImpl<$Res, _$VeiculoImpl>
    implements _$$VeiculoImplCopyWith<$Res> {
  __$$VeiculoImplCopyWithImpl(
      _$VeiculoImpl _value, $Res Function(_$VeiculoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? veiculo = freezed,
    Object? marca = freezed,
    Object? ano = freezed,
    Object? placa = freezed,
    Object? odometro = freezed,
    Object? usuarioId = freezed,
  }) {
    return _then(_$VeiculoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      veiculo: freezed == veiculo
          ? _value.veiculo
          : veiculo // ignore: cast_nullable_to_non_nullable
              as String?,
      marca: freezed == marca
          ? _value.marca
          : marca // ignore: cast_nullable_to_non_nullable
              as String?,
      ano: freezed == ano
          ? _value.ano
          : ano // ignore: cast_nullable_to_non_nullable
              as int?,
      placa: freezed == placa
          ? _value.placa
          : placa // ignore: cast_nullable_to_non_nullable
              as String?,
      odometro: freezed == odometro
          ? _value.odometro
          : odometro // ignore: cast_nullable_to_non_nullable
              as double?,
      usuarioId: freezed == usuarioId
          ? _value.usuarioId
          : usuarioId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$VeiculoImpl extends _Veiculo {
  const _$VeiculoImpl(
      {@JsonKey(includeIfNull: false) this.id,
      @JsonKey(includeIfNull: false) this.veiculo,
      @JsonKey(includeIfNull: false) this.marca,
      @JsonKey(includeIfNull: false) this.ano,
      @JsonKey(includeIfNull: false) this.placa,
      @JsonKey(includeIfNull: false) this.odometro,
      @JsonKey(includeIfNull: false) this.usuarioId})
      : super._();

  factory _$VeiculoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VeiculoImplFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final int? id;
  @override
  @JsonKey(includeIfNull: false)
  final String? veiculo;
  @override
  @JsonKey(includeIfNull: false)
  final String? marca;
  @override
  @JsonKey(includeIfNull: false)
  final int? ano;
  @override
  @JsonKey(includeIfNull: false)
  final String? placa;
  @override
  @JsonKey(includeIfNull: false)
  final double? odometro;
  @override
  @JsonKey(includeIfNull: false)
  final int? usuarioId;

  @override
  String toString() {
    return 'Veiculo(id: $id, veiculo: $veiculo, marca: $marca, ano: $ano, placa: $placa, odometro: $odometro, usuarioId: $usuarioId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VeiculoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.veiculo, veiculo) || other.veiculo == veiculo) &&
            (identical(other.marca, marca) || other.marca == marca) &&
            (identical(other.ano, ano) || other.ano == ano) &&
            (identical(other.placa, placa) || other.placa == placa) &&
            (identical(other.odometro, odometro) ||
                other.odometro == odometro) &&
            (identical(other.usuarioId, usuarioId) ||
                other.usuarioId == usuarioId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, veiculo, marca, ano, placa, odometro, usuarioId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VeiculoImplCopyWith<_$VeiculoImpl> get copyWith =>
      __$$VeiculoImplCopyWithImpl<_$VeiculoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VeiculoImplToJson(
      this,
    );
  }
}

abstract class _Veiculo extends Veiculo {
  const factory _Veiculo(
      {@JsonKey(includeIfNull: false) final int? id,
      @JsonKey(includeIfNull: false) final String? veiculo,
      @JsonKey(includeIfNull: false) final String? marca,
      @JsonKey(includeIfNull: false) final int? ano,
      @JsonKey(includeIfNull: false) final String? placa,
      @JsonKey(includeIfNull: false) final double? odometro,
      @JsonKey(includeIfNull: false) final int? usuarioId}) = _$VeiculoImpl;
  const _Veiculo._() : super._();

  factory _Veiculo.fromJson(Map<String, dynamic> json) = _$VeiculoImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  int? get id;
  @override
  @JsonKey(includeIfNull: false)
  String? get veiculo;
  @override
  @JsonKey(includeIfNull: false)
  String? get marca;
  @override
  @JsonKey(includeIfNull: false)
  int? get ano;
  @override
  @JsonKey(includeIfNull: false)
  String? get placa;
  @override
  @JsonKey(includeIfNull: false)
  double? get odometro;
  @override
  @JsonKey(includeIfNull: false)
  int? get usuarioId;
  @override
  @JsonKey(ignore: true)
  _$$VeiculoImplCopyWith<_$VeiculoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
