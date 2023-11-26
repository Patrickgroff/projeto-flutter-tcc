// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registrar_veiculo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegistrarVeiculoEvent {
  Veiculo get veiculo => throw _privateConstructorUsedError;
  int get usuarioId => throw _privateConstructorUsedError;
  int? get veiculoId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Veiculo veiculo, int usuarioId, int? veiculoId)
        cadastrar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Veiculo veiculo, int usuarioId, int? veiculoId)?
        cadastrar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Veiculo veiculo, int usuarioId, int? veiculoId)? cadastrar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Cadastrar value) cadastrar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Cadastrar value)? cadastrar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Cadastrar value)? cadastrar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrarVeiculoEventCopyWith<RegistrarVeiculoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrarVeiculoEventCopyWith<$Res> {
  factory $RegistrarVeiculoEventCopyWith(RegistrarVeiculoEvent value,
          $Res Function(RegistrarVeiculoEvent) then) =
      _$RegistrarVeiculoEventCopyWithImpl<$Res, RegistrarVeiculoEvent>;
  @useResult
  $Res call({Veiculo veiculo, int usuarioId, int? veiculoId});

  $VeiculoCopyWith<$Res> get veiculo;
}

/// @nodoc
class _$RegistrarVeiculoEventCopyWithImpl<$Res,
        $Val extends RegistrarVeiculoEvent>
    implements $RegistrarVeiculoEventCopyWith<$Res> {
  _$RegistrarVeiculoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? veiculo = null,
    Object? usuarioId = null,
    Object? veiculoId = freezed,
  }) {
    return _then(_value.copyWith(
      veiculo: null == veiculo
          ? _value.veiculo
          : veiculo // ignore: cast_nullable_to_non_nullable
              as Veiculo,
      usuarioId: null == usuarioId
          ? _value.usuarioId
          : usuarioId // ignore: cast_nullable_to_non_nullable
              as int,
      veiculoId: freezed == veiculoId
          ? _value.veiculoId
          : veiculoId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VeiculoCopyWith<$Res> get veiculo {
    return $VeiculoCopyWith<$Res>(_value.veiculo, (value) {
      return _then(_value.copyWith(veiculo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CadastrarImplCopyWith<$Res>
    implements $RegistrarVeiculoEventCopyWith<$Res> {
  factory _$$CadastrarImplCopyWith(
          _$CadastrarImpl value, $Res Function(_$CadastrarImpl) then) =
      __$$CadastrarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Veiculo veiculo, int usuarioId, int? veiculoId});

  @override
  $VeiculoCopyWith<$Res> get veiculo;
}

/// @nodoc
class __$$CadastrarImplCopyWithImpl<$Res>
    extends _$RegistrarVeiculoEventCopyWithImpl<$Res, _$CadastrarImpl>
    implements _$$CadastrarImplCopyWith<$Res> {
  __$$CadastrarImplCopyWithImpl(
      _$CadastrarImpl _value, $Res Function(_$CadastrarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? veiculo = null,
    Object? usuarioId = null,
    Object? veiculoId = freezed,
  }) {
    return _then(_$CadastrarImpl(
      null == veiculo
          ? _value.veiculo
          : veiculo // ignore: cast_nullable_to_non_nullable
              as Veiculo,
      null == usuarioId
          ? _value.usuarioId
          : usuarioId // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == veiculoId
          ? _value.veiculoId
          : veiculoId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$CadastrarImpl implements _Cadastrar {
  const _$CadastrarImpl(this.veiculo, this.usuarioId, this.veiculoId);

  @override
  final Veiculo veiculo;
  @override
  final int usuarioId;
  @override
  final int? veiculoId;

  @override
  String toString() {
    return 'RegistrarVeiculoEvent.cadastrar(veiculo: $veiculo, usuarioId: $usuarioId, veiculoId: $veiculoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CadastrarImpl &&
            (identical(other.veiculo, veiculo) || other.veiculo == veiculo) &&
            (identical(other.usuarioId, usuarioId) ||
                other.usuarioId == usuarioId) &&
            (identical(other.veiculoId, veiculoId) ||
                other.veiculoId == veiculoId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, veiculo, usuarioId, veiculoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CadastrarImplCopyWith<_$CadastrarImpl> get copyWith =>
      __$$CadastrarImplCopyWithImpl<_$CadastrarImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Veiculo veiculo, int usuarioId, int? veiculoId)
        cadastrar,
  }) {
    return cadastrar(veiculo, usuarioId, veiculoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Veiculo veiculo, int usuarioId, int? veiculoId)?
        cadastrar,
  }) {
    return cadastrar?.call(veiculo, usuarioId, veiculoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Veiculo veiculo, int usuarioId, int? veiculoId)? cadastrar,
    required TResult orElse(),
  }) {
    if (cadastrar != null) {
      return cadastrar(veiculo, usuarioId, veiculoId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Cadastrar value) cadastrar,
  }) {
    return cadastrar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Cadastrar value)? cadastrar,
  }) {
    return cadastrar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Cadastrar value)? cadastrar,
    required TResult orElse(),
  }) {
    if (cadastrar != null) {
      return cadastrar(this);
    }
    return orElse();
  }
}

abstract class _Cadastrar implements RegistrarVeiculoEvent {
  const factory _Cadastrar(
          final Veiculo veiculo, final int usuarioId, final int? veiculoId) =
      _$CadastrarImpl;

  @override
  Veiculo get veiculo;
  @override
  int get usuarioId;
  @override
  int? get veiculoId;
  @override
  @JsonKey(ignore: true)
  _$$CadastrarImplCopyWith<_$CadastrarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegistrarVeiculoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cadastrando,
    required TResult Function() successo,
    required TResult Function(String message) erro,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cadastrando,
    TResult? Function()? successo,
    TResult? Function(String message)? erro,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cadastrando,
    TResult Function()? successo,
    TResult Function(String message)? erro,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Cadastrando value) cadastrando,
    required TResult Function(_Successo value) successo,
    required TResult Function(_Erro value) erro,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Cadastrando value)? cadastrando,
    TResult? Function(_Successo value)? successo,
    TResult? Function(_Erro value)? erro,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Cadastrando value)? cadastrando,
    TResult Function(_Successo value)? successo,
    TResult Function(_Erro value)? erro,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrarVeiculoStateCopyWith<$Res> {
  factory $RegistrarVeiculoStateCopyWith(RegistrarVeiculoState value,
          $Res Function(RegistrarVeiculoState) then) =
      _$RegistrarVeiculoStateCopyWithImpl<$Res, RegistrarVeiculoState>;
}

/// @nodoc
class _$RegistrarVeiculoStateCopyWithImpl<$Res,
        $Val extends RegistrarVeiculoState>
    implements $RegistrarVeiculoStateCopyWith<$Res> {
  _$RegistrarVeiculoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RegistrarVeiculoStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RegistrarVeiculoState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cadastrando,
    required TResult Function() successo,
    required TResult Function(String message) erro,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cadastrando,
    TResult? Function()? successo,
    TResult? Function(String message)? erro,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cadastrando,
    TResult Function()? successo,
    TResult Function(String message)? erro,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Cadastrando value) cadastrando,
    required TResult Function(_Successo value) successo,
    required TResult Function(_Erro value) erro,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Cadastrando value)? cadastrando,
    TResult? Function(_Successo value)? successo,
    TResult? Function(_Erro value)? erro,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Cadastrando value)? cadastrando,
    TResult Function(_Successo value)? successo,
    TResult Function(_Erro value)? erro,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RegistrarVeiculoState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CadastrandoImplCopyWith<$Res> {
  factory _$$CadastrandoImplCopyWith(
          _$CadastrandoImpl value, $Res Function(_$CadastrandoImpl) then) =
      __$$CadastrandoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CadastrandoImplCopyWithImpl<$Res>
    extends _$RegistrarVeiculoStateCopyWithImpl<$Res, _$CadastrandoImpl>
    implements _$$CadastrandoImplCopyWith<$Res> {
  __$$CadastrandoImplCopyWithImpl(
      _$CadastrandoImpl _value, $Res Function(_$CadastrandoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CadastrandoImpl implements _Cadastrando {
  const _$CadastrandoImpl();

  @override
  String toString() {
    return 'RegistrarVeiculoState.cadastrando()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CadastrandoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cadastrando,
    required TResult Function() successo,
    required TResult Function(String message) erro,
  }) {
    return cadastrando();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cadastrando,
    TResult? Function()? successo,
    TResult? Function(String message)? erro,
  }) {
    return cadastrando?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cadastrando,
    TResult Function()? successo,
    TResult Function(String message)? erro,
    required TResult orElse(),
  }) {
    if (cadastrando != null) {
      return cadastrando();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Cadastrando value) cadastrando,
    required TResult Function(_Successo value) successo,
    required TResult Function(_Erro value) erro,
  }) {
    return cadastrando(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Cadastrando value)? cadastrando,
    TResult? Function(_Successo value)? successo,
    TResult? Function(_Erro value)? erro,
  }) {
    return cadastrando?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Cadastrando value)? cadastrando,
    TResult Function(_Successo value)? successo,
    TResult Function(_Erro value)? erro,
    required TResult orElse(),
  }) {
    if (cadastrando != null) {
      return cadastrando(this);
    }
    return orElse();
  }
}

abstract class _Cadastrando implements RegistrarVeiculoState {
  const factory _Cadastrando() = _$CadastrandoImpl;
}

/// @nodoc
abstract class _$$SuccessoImplCopyWith<$Res> {
  factory _$$SuccessoImplCopyWith(
          _$SuccessoImpl value, $Res Function(_$SuccessoImpl) then) =
      __$$SuccessoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessoImplCopyWithImpl<$Res>
    extends _$RegistrarVeiculoStateCopyWithImpl<$Res, _$SuccessoImpl>
    implements _$$SuccessoImplCopyWith<$Res> {
  __$$SuccessoImplCopyWithImpl(
      _$SuccessoImpl _value, $Res Function(_$SuccessoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessoImpl implements _Successo {
  const _$SuccessoImpl();

  @override
  String toString() {
    return 'RegistrarVeiculoState.successo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cadastrando,
    required TResult Function() successo,
    required TResult Function(String message) erro,
  }) {
    return successo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cadastrando,
    TResult? Function()? successo,
    TResult? Function(String message)? erro,
  }) {
    return successo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cadastrando,
    TResult Function()? successo,
    TResult Function(String message)? erro,
    required TResult orElse(),
  }) {
    if (successo != null) {
      return successo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Cadastrando value) cadastrando,
    required TResult Function(_Successo value) successo,
    required TResult Function(_Erro value) erro,
  }) {
    return successo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Cadastrando value)? cadastrando,
    TResult? Function(_Successo value)? successo,
    TResult? Function(_Erro value)? erro,
  }) {
    return successo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Cadastrando value)? cadastrando,
    TResult Function(_Successo value)? successo,
    TResult Function(_Erro value)? erro,
    required TResult orElse(),
  }) {
    if (successo != null) {
      return successo(this);
    }
    return orElse();
  }
}

abstract class _Successo implements RegistrarVeiculoState {
  const factory _Successo() = _$SuccessoImpl;
}

/// @nodoc
abstract class _$$ErroImplCopyWith<$Res> {
  factory _$$ErroImplCopyWith(
          _$ErroImpl value, $Res Function(_$ErroImpl) then) =
      __$$ErroImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErroImplCopyWithImpl<$Res>
    extends _$RegistrarVeiculoStateCopyWithImpl<$Res, _$ErroImpl>
    implements _$$ErroImplCopyWith<$Res> {
  __$$ErroImplCopyWithImpl(_$ErroImpl _value, $Res Function(_$ErroImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErroImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErroImpl implements _Erro {
  const _$ErroImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RegistrarVeiculoState.erro(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErroImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErroImplCopyWith<_$ErroImpl> get copyWith =>
      __$$ErroImplCopyWithImpl<_$ErroImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cadastrando,
    required TResult Function() successo,
    required TResult Function(String message) erro,
  }) {
    return erro(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cadastrando,
    TResult? Function()? successo,
    TResult? Function(String message)? erro,
  }) {
    return erro?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cadastrando,
    TResult Function()? successo,
    TResult Function(String message)? erro,
    required TResult orElse(),
  }) {
    if (erro != null) {
      return erro(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Cadastrando value) cadastrando,
    required TResult Function(_Successo value) successo,
    required TResult Function(_Erro value) erro,
  }) {
    return erro(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Cadastrando value)? cadastrando,
    TResult? Function(_Successo value)? successo,
    TResult? Function(_Erro value)? erro,
  }) {
    return erro?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Cadastrando value)? cadastrando,
    TResult Function(_Successo value)? successo,
    TResult Function(_Erro value)? erro,
    required TResult orElse(),
  }) {
    if (erro != null) {
      return erro(this);
    }
    return orElse();
  }
}

abstract class _Erro implements RegistrarVeiculoState {
  const factory _Erro(final String message) = _$ErroImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErroImplCopyWith<_$ErroImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
