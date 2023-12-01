// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'servico.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Servico _$ServicoFromJson(Map<String, dynamic> json) {
  return _Servico.fromJson(json);
}

/// @nodoc
mixin _$Servico {
  @JsonKey(includeIfNull: false)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  @AppDateTimeConverter()
  DateTime? get data => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  double? get odometro => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get tipoServico => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  double? get valor => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get observacao => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get veiculoId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServicoCopyWith<Servico> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicoCopyWith<$Res> {
  factory $ServicoCopyWith(Servico value, $Res Function(Servico) then) =
      _$ServicoCopyWithImpl<$Res, Servico>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      @JsonKey(includeIfNull: false) @AppDateTimeConverter() DateTime? data,
      @JsonKey(includeIfNull: false) double? odometro,
      @JsonKey(includeIfNull: false) String? tipoServico,
      @JsonKey(includeIfNull: false) double? valor,
      @JsonKey(includeIfNull: false) String? observacao,
      @JsonKey(includeIfNull: false) int? veiculoId});
}

/// @nodoc
class _$ServicoCopyWithImpl<$Res, $Val extends Servico>
    implements $ServicoCopyWith<$Res> {
  _$ServicoCopyWithImpl(this._value, this._then);

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
    Object? tipoServico = freezed,
    Object? valor = freezed,
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
      tipoServico: freezed == tipoServico
          ? _value.tipoServico
          : tipoServico // ignore: cast_nullable_to_non_nullable
              as String?,
      valor: freezed == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ServicoImplCopyWith<$Res> implements $ServicoCopyWith<$Res> {
  factory _$$ServicoImplCopyWith(
          _$ServicoImpl value, $Res Function(_$ServicoImpl) then) =
      __$$ServicoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      @JsonKey(includeIfNull: false) @AppDateTimeConverter() DateTime? data,
      @JsonKey(includeIfNull: false) double? odometro,
      @JsonKey(includeIfNull: false) String? tipoServico,
      @JsonKey(includeIfNull: false) double? valor,
      @JsonKey(includeIfNull: false) String? observacao,
      @JsonKey(includeIfNull: false) int? veiculoId});
}

/// @nodoc
class __$$ServicoImplCopyWithImpl<$Res>
    extends _$ServicoCopyWithImpl<$Res, _$ServicoImpl>
    implements _$$ServicoImplCopyWith<$Res> {
  __$$ServicoImplCopyWithImpl(
      _$ServicoImpl _value, $Res Function(_$ServicoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? data = freezed,
    Object? odometro = freezed,
    Object? tipoServico = freezed,
    Object? valor = freezed,
    Object? observacao = freezed,
    Object? veiculoId = freezed,
  }) {
    return _then(_$ServicoImpl(
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
      tipoServico: freezed == tipoServico
          ? _value.tipoServico
          : tipoServico // ignore: cast_nullable_to_non_nullable
              as String?,
      valor: freezed == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
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
class _$ServicoImpl extends _Servico {
  const _$ServicoImpl(
      {@JsonKey(includeIfNull: false) this.id,
      @JsonKey(includeIfNull: false) @AppDateTimeConverter() this.data,
      @JsonKey(includeIfNull: false) this.odometro,
      @JsonKey(includeIfNull: false) this.tipoServico,
      @JsonKey(includeIfNull: false) this.valor,
      @JsonKey(includeIfNull: false) this.observacao,
      @JsonKey(includeIfNull: false) this.veiculoId})
      : super._();

  factory _$ServicoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServicoImplFromJson(json);

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
  final String? tipoServico;
  @override
  @JsonKey(includeIfNull: false)
  final double? valor;
  @override
  @JsonKey(includeIfNull: false)
  final String? observacao;
  @override
  @JsonKey(includeIfNull: false)
  final int? veiculoId;

  @override
  String toString() {
    return 'Servico(id: $id, data: $data, odometro: $odometro, tipoServico: $tipoServico, valor: $valor, observacao: $observacao, veiculoId: $veiculoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServicoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.odometro, odometro) ||
                other.odometro == odometro) &&
            (identical(other.tipoServico, tipoServico) ||
                other.tipoServico == tipoServico) &&
            (identical(other.valor, valor) || other.valor == valor) &&
            (identical(other.observacao, observacao) ||
                other.observacao == observacao) &&
            (identical(other.veiculoId, veiculoId) ||
                other.veiculoId == veiculoId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, data, odometro, tipoServico,
      valor, observacao, veiculoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServicoImplCopyWith<_$ServicoImpl> get copyWith =>
      __$$ServicoImplCopyWithImpl<_$ServicoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServicoImplToJson(
      this,
    );
  }
}

abstract class _Servico extends Servico {
  const factory _Servico(
      {@JsonKey(includeIfNull: false) final int? id,
      @JsonKey(includeIfNull: false)
      @AppDateTimeConverter()
      final DateTime? data,
      @JsonKey(includeIfNull: false) final double? odometro,
      @JsonKey(includeIfNull: false) final String? tipoServico,
      @JsonKey(includeIfNull: false) final double? valor,
      @JsonKey(includeIfNull: false) final String? observacao,
      @JsonKey(includeIfNull: false) final int? veiculoId}) = _$ServicoImpl;
  const _Servico._() : super._();

  factory _Servico.fromJson(Map<String, dynamic> json) = _$ServicoImpl.fromJson;

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
  String? get tipoServico;
  @override
  @JsonKey(includeIfNull: false)
  double? get valor;
  @override
  @JsonKey(includeIfNull: false)
  String? get observacao;
  @override
  @JsonKey(includeIfNull: false)
  int? get veiculoId;
  @override
  @JsonKey(ignore: true)
  _$$ServicoImplCopyWith<_$ServicoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
