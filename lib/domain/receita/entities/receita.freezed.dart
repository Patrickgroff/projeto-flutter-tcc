// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receita.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Receita _$ReceitaFromJson(Map<String, dynamic> json) {
  return _Receita.fromJson(json);
}

/// @nodoc
mixin _$Receita {
  @JsonKey(includeIfNull: false)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String get data => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  double get odometro => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  double get valor => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String get tipoReceita => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String get observacao => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int get veiculoId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceitaCopyWith<Receita> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceitaCopyWith<$Res> {
  factory $ReceitaCopyWith(Receita value, $Res Function(Receita) then) =
      _$ReceitaCopyWithImpl<$Res, Receita>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int id,
      @JsonKey(includeIfNull: false) String data,
      @JsonKey(includeIfNull: false) double odometro,
      @JsonKey(includeIfNull: false) double valor,
      @JsonKey(includeIfNull: false) String tipoReceita,
      @JsonKey(includeIfNull: false) String observacao,
      @JsonKey(includeIfNull: false) int veiculoId});
}

/// @nodoc
class _$ReceitaCopyWithImpl<$Res, $Val extends Receita>
    implements $ReceitaCopyWith<$Res> {
  _$ReceitaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
    Object? odometro = null,
    Object? valor = null,
    Object? tipoReceita = null,
    Object? observacao = null,
    Object? veiculoId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      odometro: null == odometro
          ? _value.odometro
          : odometro // ignore: cast_nullable_to_non_nullable
              as double,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as double,
      tipoReceita: null == tipoReceita
          ? _value.tipoReceita
          : tipoReceita // ignore: cast_nullable_to_non_nullable
              as String,
      observacao: null == observacao
          ? _value.observacao
          : observacao // ignore: cast_nullable_to_non_nullable
              as String,
      veiculoId: null == veiculoId
          ? _value.veiculoId
          : veiculoId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReceitaImplCopyWith<$Res> implements $ReceitaCopyWith<$Res> {
  factory _$$ReceitaImplCopyWith(
          _$ReceitaImpl value, $Res Function(_$ReceitaImpl) then) =
      __$$ReceitaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int id,
      @JsonKey(includeIfNull: false) String data,
      @JsonKey(includeIfNull: false) double odometro,
      @JsonKey(includeIfNull: false) double valor,
      @JsonKey(includeIfNull: false) String tipoReceita,
      @JsonKey(includeIfNull: false) String observacao,
      @JsonKey(includeIfNull: false) int veiculoId});
}

/// @nodoc
class __$$ReceitaImplCopyWithImpl<$Res>
    extends _$ReceitaCopyWithImpl<$Res, _$ReceitaImpl>
    implements _$$ReceitaImplCopyWith<$Res> {
  __$$ReceitaImplCopyWithImpl(
      _$ReceitaImpl _value, $Res Function(_$ReceitaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
    Object? odometro = null,
    Object? valor = null,
    Object? tipoReceita = null,
    Object? observacao = null,
    Object? veiculoId = null,
  }) {
    return _then(_$ReceitaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      odometro: null == odometro
          ? _value.odometro
          : odometro // ignore: cast_nullable_to_non_nullable
              as double,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as double,
      tipoReceita: null == tipoReceita
          ? _value.tipoReceita
          : tipoReceita // ignore: cast_nullable_to_non_nullable
              as String,
      observacao: null == observacao
          ? _value.observacao
          : observacao // ignore: cast_nullable_to_non_nullable
              as String,
      veiculoId: null == veiculoId
          ? _value.veiculoId
          : veiculoId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$ReceitaImpl extends _Receita {
  const _$ReceitaImpl(
      {@JsonKey(includeIfNull: false) required this.id,
      @JsonKey(includeIfNull: false) required this.data,
      @JsonKey(includeIfNull: false) required this.odometro,
      @JsonKey(includeIfNull: false) required this.valor,
      @JsonKey(includeIfNull: false) required this.tipoReceita,
      @JsonKey(includeIfNull: false) required this.observacao,
      @JsonKey(includeIfNull: false) required this.veiculoId})
      : super._();

  factory _$ReceitaImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceitaImplFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final int id;
  @override
  @JsonKey(includeIfNull: false)
  final String data;
  @override
  @JsonKey(includeIfNull: false)
  final double odometro;
  @override
  @JsonKey(includeIfNull: false)
  final double valor;
  @override
  @JsonKey(includeIfNull: false)
  final String tipoReceita;
  @override
  @JsonKey(includeIfNull: false)
  final String observacao;
  @override
  @JsonKey(includeIfNull: false)
  final int veiculoId;

  @override
  String toString() {
    return 'Receita(id: $id, data: $data, odometro: $odometro, valor: $valor, tipoReceita: $tipoReceita, observacao: $observacao, veiculoId: $veiculoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceitaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.odometro, odometro) ||
                other.odometro == odometro) &&
            (identical(other.valor, valor) || other.valor == valor) &&
            (identical(other.tipoReceita, tipoReceita) ||
                other.tipoReceita == tipoReceita) &&
            (identical(other.observacao, observacao) ||
                other.observacao == observacao) &&
            (identical(other.veiculoId, veiculoId) ||
                other.veiculoId == veiculoId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, data, odometro, valor,
      tipoReceita, observacao, veiculoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceitaImplCopyWith<_$ReceitaImpl> get copyWith =>
      __$$ReceitaImplCopyWithImpl<_$ReceitaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceitaImplToJson(
      this,
    );
  }
}

abstract class _Receita extends Receita {
  const factory _Receita(
          {@JsonKey(includeIfNull: false) required final int id,
          @JsonKey(includeIfNull: false) required final String data,
          @JsonKey(includeIfNull: false) required final double odometro,
          @JsonKey(includeIfNull: false) required final double valor,
          @JsonKey(includeIfNull: false) required final String tipoReceita,
          @JsonKey(includeIfNull: false) required final String observacao,
          @JsonKey(includeIfNull: false) required final int veiculoId}) =
      _$ReceitaImpl;
  const _Receita._() : super._();

  factory _Receita.fromJson(Map<String, dynamic> json) = _$ReceitaImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  int get id;
  @override
  @JsonKey(includeIfNull: false)
  String get data;
  @override
  @JsonKey(includeIfNull: false)
  double get odometro;
  @override
  @JsonKey(includeIfNull: false)
  double get valor;
  @override
  @JsonKey(includeIfNull: false)
  String get tipoReceita;
  @override
  @JsonKey(includeIfNull: false)
  String get observacao;
  @override
  @JsonKey(includeIfNull: false)
  int get veiculoId;
  @override
  @JsonKey(ignore: true)
  _$$ReceitaImplCopyWith<_$ReceitaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
