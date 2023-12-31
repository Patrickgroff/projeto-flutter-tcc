// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'abastecimento.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Abastecimento _$AbastecimentoFromJson(Map<String, dynamic> json) {
  return _Abastecimento.fromJson(json);
}

/// @nodoc
mixin _$Abastecimento {
  @JsonKey(includeIfNull: false)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  @AppDateTimeConverter()
  DateTime? get data => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  double? get odometro => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get tipoCombustivel => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  double? get valor => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  double? get litros => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get observacao => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get veiculoId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbastecimentoCopyWith<Abastecimento> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbastecimentoCopyWith<$Res> {
  factory $AbastecimentoCopyWith(
          Abastecimento value, $Res Function(Abastecimento) then) =
      _$AbastecimentoCopyWithImpl<$Res, Abastecimento>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      @JsonKey(includeIfNull: false) @AppDateTimeConverter() DateTime? data,
      @JsonKey(includeIfNull: false) double? odometro,
      @JsonKey(includeIfNull: false) String? tipoCombustivel,
      @JsonKey(includeIfNull: false) double? valor,
      @JsonKey(includeIfNull: false) double? litros,
      @JsonKey(includeIfNull: false) String? observacao,
      @JsonKey(includeIfNull: false) int? veiculoId});
}

/// @nodoc
class _$AbastecimentoCopyWithImpl<$Res, $Val extends Abastecimento>
    implements $AbastecimentoCopyWith<$Res> {
  _$AbastecimentoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? data = freezed,
    Object? odometro = freezed,
    Object? tipoCombustivel = freezed,
    Object? valor = freezed,
    Object? litros = freezed,
    Object? observacao = freezed,
    Object? veiculoId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      odometro: freezed == odometro
          ? _value.odometro
          : odometro // ignore: cast_nullable_to_non_nullable
              as double?,
      tipoCombustivel: freezed == tipoCombustivel
          ? _value.tipoCombustivel
          : tipoCombustivel // ignore: cast_nullable_to_non_nullable
              as String?,
      valor: freezed == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as double?,
      litros: freezed == litros
          ? _value.litros
          : litros // ignore: cast_nullable_to_non_nullable
              as double?,
      observacao: freezed == observacao
          ? _value.observacao
          : observacao // ignore: cast_nullable_to_non_nullable
              as String?,
      veiculoId: freezed == veiculoId
          ? _value.veiculoId
          : veiculoId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AbastecimentoImplCopyWith<$Res>
    implements $AbastecimentoCopyWith<$Res> {
  factory _$$AbastecimentoImplCopyWith(
          _$AbastecimentoImpl value, $Res Function(_$AbastecimentoImpl) then) =
      __$$AbastecimentoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      @JsonKey(includeIfNull: false) @AppDateTimeConverter() DateTime? data,
      @JsonKey(includeIfNull: false) double? odometro,
      @JsonKey(includeIfNull: false) String? tipoCombustivel,
      @JsonKey(includeIfNull: false) double? valor,
      @JsonKey(includeIfNull: false) double? litros,
      @JsonKey(includeIfNull: false) String? observacao,
      @JsonKey(includeIfNull: false) int? veiculoId});
}

/// @nodoc
class __$$AbastecimentoImplCopyWithImpl<$Res>
    extends _$AbastecimentoCopyWithImpl<$Res, _$AbastecimentoImpl>
    implements _$$AbastecimentoImplCopyWith<$Res> {
  __$$AbastecimentoImplCopyWithImpl(
      _$AbastecimentoImpl _value, $Res Function(_$AbastecimentoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? data = freezed,
    Object? odometro = freezed,
    Object? tipoCombustivel = freezed,
    Object? valor = freezed,
    Object? litros = freezed,
    Object? observacao = freezed,
    Object? veiculoId = freezed,
  }) {
    return _then(_$AbastecimentoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      odometro: freezed == odometro
          ? _value.odometro
          : odometro // ignore: cast_nullable_to_non_nullable
              as double?,
      tipoCombustivel: freezed == tipoCombustivel
          ? _value.tipoCombustivel
          : tipoCombustivel // ignore: cast_nullable_to_non_nullable
              as String?,
      valor: freezed == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as double?,
      litros: freezed == litros
          ? _value.litros
          : litros // ignore: cast_nullable_to_non_nullable
              as double?,
      observacao: freezed == observacao
          ? _value.observacao
          : observacao // ignore: cast_nullable_to_non_nullable
              as String?,
      veiculoId: freezed == veiculoId
          ? _value.veiculoId
          : veiculoId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$AbastecimentoImpl extends _Abastecimento {
  const _$AbastecimentoImpl(
      {@JsonKey(includeIfNull: false) this.id,
      @JsonKey(includeIfNull: false) @AppDateTimeConverter() this.data,
      @JsonKey(includeIfNull: false) this.odometro,
      @JsonKey(includeIfNull: false) this.tipoCombustivel,
      @JsonKey(includeIfNull: false) this.valor,
      @JsonKey(includeIfNull: false) this.litros,
      @JsonKey(includeIfNull: false) this.observacao,
      @JsonKey(includeIfNull: false) this.veiculoId})
      : super._();

  factory _$AbastecimentoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbastecimentoImplFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final int? id;
  @override
  @JsonKey(includeIfNull: false)
  @AppDateTimeConverter()
  final DateTime? data;
  @override
  @JsonKey(includeIfNull: false)
  final double? odometro;
  @override
  @JsonKey(includeIfNull: false)
  final String? tipoCombustivel;
  @override
  @JsonKey(includeIfNull: false)
  final double? valor;
  @override
  @JsonKey(includeIfNull: false)
  final double? litros;
  @override
  @JsonKey(includeIfNull: false)
  final String? observacao;
  @override
  @JsonKey(includeIfNull: false)
  final int? veiculoId;

  @override
  String toString() {
    return 'Abastecimento(id: $id, data: $data, odometro: $odometro, tipoCombustivel: $tipoCombustivel, valor: $valor, litros: $litros, observacao: $observacao, veiculoId: $veiculoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbastecimentoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.odometro, odometro) ||
                other.odometro == odometro) &&
            (identical(other.tipoCombustivel, tipoCombustivel) ||
                other.tipoCombustivel == tipoCombustivel) &&
            (identical(other.valor, valor) || other.valor == valor) &&
            (identical(other.litros, litros) || other.litros == litros) &&
            (identical(other.observacao, observacao) ||
                other.observacao == observacao) &&
            (identical(other.veiculoId, veiculoId) ||
                other.veiculoId == veiculoId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, data, odometro,
      tipoCombustivel, valor, litros, observacao, veiculoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AbastecimentoImplCopyWith<_$AbastecimentoImpl> get copyWith =>
      __$$AbastecimentoImplCopyWithImpl<_$AbastecimentoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbastecimentoImplToJson(
      this,
    );
  }
}

abstract class _Abastecimento extends Abastecimento {
  const factory _Abastecimento(
          {@JsonKey(includeIfNull: false) final int? id,
          @JsonKey(includeIfNull: false)
          @AppDateTimeConverter()
          final DateTime? data,
          @JsonKey(includeIfNull: false) final double? odometro,
          @JsonKey(includeIfNull: false) final String? tipoCombustivel,
          @JsonKey(includeIfNull: false) final double? valor,
          @JsonKey(includeIfNull: false) final double? litros,
          @JsonKey(includeIfNull: false) final String? observacao,
          @JsonKey(includeIfNull: false) final int? veiculoId}) =
      _$AbastecimentoImpl;
  const _Abastecimento._() : super._();

  factory _Abastecimento.fromJson(Map<String, dynamic> json) =
      _$AbastecimentoImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  int? get id;
  @override
  @JsonKey(includeIfNull: false)
  @AppDateTimeConverter()
  DateTime? get data;
  @override
  @JsonKey(includeIfNull: false)
  double? get odometro;
  @override
  @JsonKey(includeIfNull: false)
  String? get tipoCombustivel;
  @override
  @JsonKey(includeIfNull: false)
  double? get valor;
  @override
  @JsonKey(includeIfNull: false)
  double? get litros;
  @override
  @JsonKey(includeIfNull: false)
  String? get observacao;
  @override
  @JsonKey(includeIfNull: false)
  int? get veiculoId;
  @override
  @JsonKey(ignore: true)
  _$$AbastecimentoImplCopyWith<_$AbastecimentoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
