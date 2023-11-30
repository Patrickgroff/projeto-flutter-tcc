// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registrar_despesa_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegistrarDespesaEvent {
  Despesa get despesa => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Despesa despesa) cadastrar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Despesa despesa)? cadastrar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Despesa despesa)? cadastrar,
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
  $RegistrarDespesaEventCopyWith<RegistrarDespesaEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrarDespesaEventCopyWith<$Res> {
  factory $RegistrarDespesaEventCopyWith(RegistrarDespesaEvent value,
          $Res Function(RegistrarDespesaEvent) then) =
      _$RegistrarDespesaEventCopyWithImpl<$Res, RegistrarDespesaEvent>;
  @useResult
  $Res call({Despesa despesa});

  $DespesaCopyWith<$Res> get despesa;
}

/// @nodoc
class _$RegistrarDespesaEventCopyWithImpl<$Res,
        $Val extends RegistrarDespesaEvent>
    implements $RegistrarDespesaEventCopyWith<$Res> {
  _$RegistrarDespesaEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? despesa = null,
  }) {
    return _then(_value.copyWith(
      despesa: null == despesa
          ? _value.despesa
          : despesa // ignore: cast_nullable_to_non_nullable
              as Despesa,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DespesaCopyWith<$Res> get despesa {
    return $DespesaCopyWith<$Res>(_value.despesa, (value) {
      return _then(_value.copyWith(despesa: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CadastrarImplCopyWith<$Res>
    implements $RegistrarDespesaEventCopyWith<$Res> {
  factory _$$CadastrarImplCopyWith(
          _$CadastrarImpl value, $Res Function(_$CadastrarImpl) then) =
      __$$CadastrarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Despesa despesa});

  @override
  $DespesaCopyWith<$Res> get despesa;
}

/// @nodoc
class __$$CadastrarImplCopyWithImpl<$Res>
    extends _$RegistrarDespesaEventCopyWithImpl<$Res, _$CadastrarImpl>
    implements _$$CadastrarImplCopyWith<$Res> {
  __$$CadastrarImplCopyWithImpl(
      _$CadastrarImpl _value, $Res Function(_$CadastrarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? despesa = null,
  }) {
    return _then(_$CadastrarImpl(
      null == despesa
          ? _value.despesa
          : despesa // ignore: cast_nullable_to_non_nullable
              as Despesa,
    ));
  }
}

/// @nodoc

class _$CadastrarImpl implements _Cadastrar {
  const _$CadastrarImpl(this.despesa);

  @override
  final Despesa despesa;

  @override
  String toString() {
    return 'RegistrarDespesaEvent.cadastrar(despesa: $despesa)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CadastrarImpl &&
            (identical(other.despesa, despesa) || other.despesa == despesa));
  }

  @override
  int get hashCode => Object.hash(runtimeType, despesa);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CadastrarImplCopyWith<_$CadastrarImpl> get copyWith =>
      __$$CadastrarImplCopyWithImpl<_$CadastrarImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Despesa despesa) cadastrar,
  }) {
    return cadastrar(despesa);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Despesa despesa)? cadastrar,
  }) {
    return cadastrar?.call(despesa);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Despesa despesa)? cadastrar,
    required TResult orElse(),
  }) {
    if (cadastrar != null) {
      return cadastrar(despesa);
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

abstract class _Cadastrar implements RegistrarDespesaEvent {
  const factory _Cadastrar(final Despesa despesa) = _$CadastrarImpl;

  @override
  Despesa get despesa;
  @override
  @JsonKey(ignore: true)
  _$$CadastrarImplCopyWith<_$CadastrarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegistrarDespesaState {
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
abstract class $RegistrarDespesaStateCopyWith<$Res> {
  factory $RegistrarDespesaStateCopyWith(RegistrarDespesaState value,
          $Res Function(RegistrarDespesaState) then) =
      _$RegistrarDespesaStateCopyWithImpl<$Res, RegistrarDespesaState>;
}

/// @nodoc
class _$RegistrarDespesaStateCopyWithImpl<$Res,
        $Val extends RegistrarDespesaState>
    implements $RegistrarDespesaStateCopyWith<$Res> {
  _$RegistrarDespesaStateCopyWithImpl(this._value, this._then);

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
    extends _$RegistrarDespesaStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'RegistrarDespesaState.initial()';
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

abstract class _Initial implements RegistrarDespesaState {
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
    extends _$RegistrarDespesaStateCopyWithImpl<$Res, _$CadastrandoImpl>
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
    return 'RegistrarDespesaState.cadastrando()';
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

abstract class _Cadastrando implements RegistrarDespesaState {
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
    extends _$RegistrarDespesaStateCopyWithImpl<$Res, _$SuccessoImpl>
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
    return 'RegistrarDespesaState.successo()';
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

abstract class _Successo implements RegistrarDespesaState {
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
    extends _$RegistrarDespesaStateCopyWithImpl<$Res, _$ErroImpl>
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
    return 'RegistrarDespesaState.erro(message: $message)';
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

abstract class _Erro implements RegistrarDespesaState {
  const factory _Erro(final String message) = _$ErroImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErroImplCopyWith<_$ErroImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
