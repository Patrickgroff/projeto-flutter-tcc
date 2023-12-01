// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registrar_servico_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegistrarServicoEvent {
  Servico get servico => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Servico servico) cadastrar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Servico servico)? cadastrar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Servico servico)? cadastrar,
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
  $RegistrarServicoEventCopyWith<RegistrarServicoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrarServicoEventCopyWith<$Res> {
  factory $RegistrarServicoEventCopyWith(RegistrarServicoEvent value,
          $Res Function(RegistrarServicoEvent) then) =
      _$RegistrarServicoEventCopyWithImpl<$Res, RegistrarServicoEvent>;
  @useResult
  $Res call({Servico servico});

  $ServicoCopyWith<$Res> get servico;
}

/// @nodoc
class _$RegistrarServicoEventCopyWithImpl<$Res,
        $Val extends RegistrarServicoEvent>
    implements $RegistrarServicoEventCopyWith<$Res> {
  _$RegistrarServicoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? servico = null,
  }) {
    return _then(_value.copyWith(
      servico: null == servico
          ? _value.servico
          : servico // ignore: cast_nullable_to_non_nullable
              as Servico,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ServicoCopyWith<$Res> get servico {
    return $ServicoCopyWith<$Res>(_value.servico, (value) {
      return _then(_value.copyWith(servico: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CadastrarImplCopyWith<$Res>
    implements $RegistrarServicoEventCopyWith<$Res> {
  factory _$$CadastrarImplCopyWith(
          _$CadastrarImpl value, $Res Function(_$CadastrarImpl) then) =
      __$$CadastrarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Servico servico});

  @override
  $ServicoCopyWith<$Res> get servico;
}

/// @nodoc
class __$$CadastrarImplCopyWithImpl<$Res>
    extends _$RegistrarServicoEventCopyWithImpl<$Res, _$CadastrarImpl>
    implements _$$CadastrarImplCopyWith<$Res> {
  __$$CadastrarImplCopyWithImpl(
      _$CadastrarImpl _value, $Res Function(_$CadastrarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? servico = null,
  }) {
    return _then(_$CadastrarImpl(
      null == servico
          ? _value.servico
          : servico // ignore: cast_nullable_to_non_nullable
              as Servico,
    ));
  }
}

/// @nodoc

class _$CadastrarImpl implements _Cadastrar {
  const _$CadastrarImpl(this.servico);

  @override
  final Servico servico;

  @override
  String toString() {
    return 'RegistrarServicoEvent.cadastrar(servico: $servico)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CadastrarImpl &&
            (identical(other.servico, servico) || other.servico == servico));
  }

  @override
  int get hashCode => Object.hash(runtimeType, servico);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CadastrarImplCopyWith<_$CadastrarImpl> get copyWith =>
      __$$CadastrarImplCopyWithImpl<_$CadastrarImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Servico servico) cadastrar,
  }) {
    return cadastrar(servico);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Servico servico)? cadastrar,
  }) {
    return cadastrar?.call(servico);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Servico servico)? cadastrar,
    required TResult orElse(),
  }) {
    if (cadastrar != null) {
      return cadastrar(servico);
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

abstract class _Cadastrar implements RegistrarServicoEvent {
  const factory _Cadastrar(final Servico servico) = _$CadastrarImpl;

  @override
  Servico get servico;
  @override
  @JsonKey(ignore: true)
  _$$CadastrarImplCopyWith<_$CadastrarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegistrarServicoState {
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
abstract class $RegistrarServicoStateCopyWith<$Res> {
  factory $RegistrarServicoStateCopyWith(RegistrarServicoState value,
          $Res Function(RegistrarServicoState) then) =
      _$RegistrarServicoStateCopyWithImpl<$Res, RegistrarServicoState>;
}

/// @nodoc
class _$RegistrarServicoStateCopyWithImpl<$Res,
        $Val extends RegistrarServicoState>
    implements $RegistrarServicoStateCopyWith<$Res> {
  _$RegistrarServicoStateCopyWithImpl(this._value, this._then);

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
    extends _$RegistrarServicoStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'RegistrarServicoState.initial()';
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

abstract class _Initial implements RegistrarServicoState {
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
    extends _$RegistrarServicoStateCopyWithImpl<$Res, _$CadastrandoImpl>
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
    return 'RegistrarServicoState.cadastrando()';
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

abstract class _Cadastrando implements RegistrarServicoState {
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
    extends _$RegistrarServicoStateCopyWithImpl<$Res, _$SuccessoImpl>
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
    return 'RegistrarServicoState.successo()';
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

abstract class _Successo implements RegistrarServicoState {
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
    extends _$RegistrarServicoStateCopyWithImpl<$Res, _$ErroImpl>
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
    return 'RegistrarServicoState.erro(message: $message)';
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

abstract class _Erro implements RegistrarServicoState {
  const factory _Erro(final String message) = _$ErroImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErroImplCopyWith<_$ErroImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
