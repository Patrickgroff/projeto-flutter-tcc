// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'linha_do_tempo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LinhaDoTempo _$LinhaDoTempoFromJson(Map<String, dynamic> json) {
  return _LinhaDoTempo.fromJson(json);
}

/// @nodoc
mixin _$LinhaDoTempo {
  @JsonKey(includeIfNull: false)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  TipoLinhaDoTempo get tipo => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String get titulo => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String get observacao => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  double get valor => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int get odometro => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinhaDoTempoCopyWith<LinhaDoTempo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinhaDoTempoCopyWith<$Res> {
  factory $LinhaDoTempoCopyWith(
          LinhaDoTempo value, $Res Function(LinhaDoTempo) then) =
      _$LinhaDoTempoCopyWithImpl<$Res, LinhaDoTempo>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int id,
      @JsonKey(includeIfNull: false) TipoLinhaDoTempo tipo,
      @JsonKey(includeIfNull: false) String titulo,
      @JsonKey(includeIfNull: false) String observacao,
      @JsonKey(includeIfNull: false) double valor,
      @JsonKey(includeIfNull: false) int odometro,
      @JsonKey(includeIfNull: false) DateTime date});
}

/// @nodoc
class _$LinhaDoTempoCopyWithImpl<$Res, $Val extends LinhaDoTempo>
    implements $LinhaDoTempoCopyWith<$Res> {
  _$LinhaDoTempoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tipo = null,
    Object? titulo = null,
    Object? observacao = null,
    Object? valor = null,
    Object? odometro = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tipo: null == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as TipoLinhaDoTempo,
      titulo: null == titulo
          ? _value.titulo
          : titulo // ignore: cast_nullable_to_non_nullable
              as String,
      observacao: null == observacao
          ? _value.observacao
          : observacao // ignore: cast_nullable_to_non_nullable
              as String,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as double,
      odometro: null == odometro
          ? _value.odometro
          : odometro // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinhaDoTempoImplCopyWith<$Res>
    implements $LinhaDoTempoCopyWith<$Res> {
  factory _$$LinhaDoTempoImplCopyWith(
          _$LinhaDoTempoImpl value, $Res Function(_$LinhaDoTempoImpl) then) =
      __$$LinhaDoTempoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int id,
      @JsonKey(includeIfNull: false) TipoLinhaDoTempo tipo,
      @JsonKey(includeIfNull: false) String titulo,
      @JsonKey(includeIfNull: false) String observacao,
      @JsonKey(includeIfNull: false) double valor,
      @JsonKey(includeIfNull: false) int odometro,
      @JsonKey(includeIfNull: false) DateTime date});
}

/// @nodoc
class __$$LinhaDoTempoImplCopyWithImpl<$Res>
    extends _$LinhaDoTempoCopyWithImpl<$Res, _$LinhaDoTempoImpl>
    implements _$$LinhaDoTempoImplCopyWith<$Res> {
  __$$LinhaDoTempoImplCopyWithImpl(
      _$LinhaDoTempoImpl _value, $Res Function(_$LinhaDoTempoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tipo = null,
    Object? titulo = null,
    Object? observacao = null,
    Object? valor = null,
    Object? odometro = null,
    Object? date = null,
  }) {
    return _then(_$LinhaDoTempoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tipo: null == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as TipoLinhaDoTempo,
      titulo: null == titulo
          ? _value.titulo
          : titulo // ignore: cast_nullable_to_non_nullable
              as String,
      observacao: null == observacao
          ? _value.observacao
          : observacao // ignore: cast_nullable_to_non_nullable
              as String,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as double,
      odometro: null == odometro
          ? _value.odometro
          : odometro // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$LinhaDoTempoImpl extends _LinhaDoTempo {
  const _$LinhaDoTempoImpl(
      {@JsonKey(includeIfNull: false) required this.id,
      @JsonKey(includeIfNull: false) required this.tipo,
      @JsonKey(includeIfNull: false) required this.titulo,
      @JsonKey(includeIfNull: false) required this.observacao,
      @JsonKey(includeIfNull: false) required this.valor,
      @JsonKey(includeIfNull: false) required this.odometro,
      @JsonKey(includeIfNull: false) required this.date})
      : super._();

  factory _$LinhaDoTempoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinhaDoTempoImplFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final int id;
  @override
  @JsonKey(includeIfNull: false)
  final TipoLinhaDoTempo tipo;
  @override
  @JsonKey(includeIfNull: false)
  final String titulo;
  @override
  @JsonKey(includeIfNull: false)
  final String observacao;
  @override
  @JsonKey(includeIfNull: false)
  final double valor;
  @override
  @JsonKey(includeIfNull: false)
  final int odometro;
  @override
  @JsonKey(includeIfNull: false)
  final DateTime date;

  @override
  String toString() {
    return 'LinhaDoTempo(id: $id, tipo: $tipo, titulo: $titulo, observacao: $observacao, valor: $valor, odometro: $odometro, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinhaDoTempoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tipo, tipo) || other.tipo == tipo) &&
            (identical(other.titulo, titulo) || other.titulo == titulo) &&
            (identical(other.observacao, observacao) ||
                other.observacao == observacao) &&
            (identical(other.valor, valor) || other.valor == valor) &&
            (identical(other.odometro, odometro) ||
                other.odometro == odometro) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, tipo, titulo, observacao, valor, odometro, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinhaDoTempoImplCopyWith<_$LinhaDoTempoImpl> get copyWith =>
      __$$LinhaDoTempoImplCopyWithImpl<_$LinhaDoTempoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinhaDoTempoImplToJson(
      this,
    );
  }
}

abstract class _LinhaDoTempo extends LinhaDoTempo {
  const factory _LinhaDoTempo(
          {@JsonKey(includeIfNull: false) required final int id,
          @JsonKey(includeIfNull: false) required final TipoLinhaDoTempo tipo,
          @JsonKey(includeIfNull: false) required final String titulo,
          @JsonKey(includeIfNull: false) required final String observacao,
          @JsonKey(includeIfNull: false) required final double valor,
          @JsonKey(includeIfNull: false) required final int odometro,
          @JsonKey(includeIfNull: false) required final DateTime date}) =
      _$LinhaDoTempoImpl;
  const _LinhaDoTempo._() : super._();

  factory _LinhaDoTempo.fromJson(Map<String, dynamic> json) =
      _$LinhaDoTempoImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  int get id;
  @override
  @JsonKey(includeIfNull: false)
  TipoLinhaDoTempo get tipo;
  @override
  @JsonKey(includeIfNull: false)
  String get titulo;
  @override
  @JsonKey(includeIfNull: false)
  String get observacao;
  @override
  @JsonKey(includeIfNull: false)
  double get valor;
  @override
  @JsonKey(includeIfNull: false)
  int get odometro;
  @override
  @JsonKey(includeIfNull: false)
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$LinhaDoTempoImplCopyWith<_$LinhaDoTempoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
