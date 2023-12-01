// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registrar_usuario_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegistrarUsuarioEvent {
  Usuario get usuario => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Usuario usuario) cadastrar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Usuario usuario)? cadastrar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Usuario usuario)? cadastrar,
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
  $RegistrarUsuarioEventCopyWith<RegistrarUsuarioEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrarUsuarioEventCopyWith<$Res> {
  factory $RegistrarUsuarioEventCopyWith(RegistrarUsuarioEvent value,
          $Res Function(RegistrarUsuarioEvent) then) =
      _$RegistrarUsuarioEventCopyWithImpl<$Res, RegistrarUsuarioEvent>;
  @useResult
  $Res call({Usuario usuario});

  $UsuarioCopyWith<$Res> get usuario;
}

/// @nodoc
class _$RegistrarUsuarioEventCopyWithImpl<$Res,
        $Val extends RegistrarUsuarioEvent>
    implements $RegistrarUsuarioEventCopyWith<$Res> {
  _$RegistrarUsuarioEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usuario = null,
  }) {
    return _then(_value.copyWith(
      usuario: null == usuario
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as Usuario,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UsuarioCopyWith<$Res> get usuario {
    return $UsuarioCopyWith<$Res>(_value.usuario, (value) {
      return _then(_value.copyWith(usuario: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CadastrarImplCopyWith<$Res>
    implements $RegistrarUsuarioEventCopyWith<$Res> {
  factory _$$CadastrarImplCopyWith(
          _$CadastrarImpl value, $Res Function(_$CadastrarImpl) then) =
      __$$CadastrarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Usuario usuario});

  @override
  $UsuarioCopyWith<$Res> get usuario;
}

/// @nodoc
class __$$CadastrarImplCopyWithImpl<$Res>
    extends _$RegistrarUsuarioEventCopyWithImpl<$Res, _$CadastrarImpl>
    implements _$$CadastrarImplCopyWith<$Res> {
  __$$CadastrarImplCopyWithImpl(
      _$CadastrarImpl _value, $Res Function(_$CadastrarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usuario = null,
  }) {
    return _then(_$CadastrarImpl(
      null == usuario
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as Usuario,
    ));
  }
}

/// @nodoc

class _$CadastrarImpl implements _Cadastrar {
  const _$CadastrarImpl(this.usuario);

  @override
  final Usuario usuario;

  @override
  String toString() {
    return 'RegistrarUsuarioEvent.cadastrar(usuario: $usuario)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CadastrarImpl &&
            (identical(other.usuario, usuario) || other.usuario == usuario));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usuario);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CadastrarImplCopyWith<_$CadastrarImpl> get copyWith =>
      __$$CadastrarImplCopyWithImpl<_$CadastrarImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Usuario usuario) cadastrar,
  }) {
    return cadastrar(usuario);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Usuario usuario)? cadastrar,
  }) {
    return cadastrar?.call(usuario);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Usuario usuario)? cadastrar,
    required TResult orElse(),
  }) {
    if (cadastrar != null) {
      return cadastrar(usuario);
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

abstract class _Cadastrar implements RegistrarUsuarioEvent {
  const factory _Cadastrar(final Usuario usuario) = _$CadastrarImpl;

  @override
  Usuario get usuario;
  @override
  @JsonKey(ignore: true)
  _$$CadastrarImplCopyWith<_$CadastrarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegistrarUsuarioState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cadastrando,
    required TResult Function(int userId) successo,
    required TResult Function(String message) erro,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cadastrando,
    TResult? Function(int userId)? successo,
    TResult? Function(String message)? erro,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cadastrando,
    TResult Function(int userId)? successo,
    TResult Function(String message)? erro,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Cadastrando value) cadastrando,
    required TResult Function(_Success value) successo,
    required TResult Function(_Error value) erro,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Cadastrando value)? cadastrando,
    TResult? Function(_Success value)? successo,
    TResult? Function(_Error value)? erro,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Cadastrando value)? cadastrando,
    TResult Function(_Success value)? successo,
    TResult Function(_Error value)? erro,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrarUsuarioStateCopyWith<$Res> {
  factory $RegistrarUsuarioStateCopyWith(RegistrarUsuarioState value,
          $Res Function(RegistrarUsuarioState) then) =
      _$RegistrarUsuarioStateCopyWithImpl<$Res, RegistrarUsuarioState>;
}

/// @nodoc
class _$RegistrarUsuarioStateCopyWithImpl<$Res,
        $Val extends RegistrarUsuarioState>
    implements $RegistrarUsuarioStateCopyWith<$Res> {
  _$RegistrarUsuarioStateCopyWithImpl(this._value, this._then);

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
    extends _$RegistrarUsuarioStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'RegistrarUsuarioState.initial()';
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
    required TResult Function(int userId) successo,
    required TResult Function(String message) erro,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cadastrando,
    TResult? Function(int userId)? successo,
    TResult? Function(String message)? erro,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cadastrando,
    TResult Function(int userId)? successo,
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
    required TResult Function(_Success value) successo,
    required TResult Function(_Error value) erro,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Cadastrando value)? cadastrando,
    TResult? Function(_Success value)? successo,
    TResult? Function(_Error value)? erro,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Cadastrando value)? cadastrando,
    TResult Function(_Success value)? successo,
    TResult Function(_Error value)? erro,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RegistrarUsuarioState {
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
    extends _$RegistrarUsuarioStateCopyWithImpl<$Res, _$CadastrandoImpl>
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
    return 'RegistrarUsuarioState.cadastrando()';
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
    required TResult Function(int userId) successo,
    required TResult Function(String message) erro,
  }) {
    return cadastrando();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cadastrando,
    TResult? Function(int userId)? successo,
    TResult? Function(String message)? erro,
  }) {
    return cadastrando?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cadastrando,
    TResult Function(int userId)? successo,
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
    required TResult Function(_Success value) successo,
    required TResult Function(_Error value) erro,
  }) {
    return cadastrando(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Cadastrando value)? cadastrando,
    TResult? Function(_Success value)? successo,
    TResult? Function(_Error value)? erro,
  }) {
    return cadastrando?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Cadastrando value)? cadastrando,
    TResult Function(_Success value)? successo,
    TResult Function(_Error value)? erro,
    required TResult orElse(),
  }) {
    if (cadastrando != null) {
      return cadastrando(this);
    }
    return orElse();
  }
}

abstract class _Cadastrando implements RegistrarUsuarioState {
  const factory _Cadastrando() = _$CadastrandoImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$RegistrarUsuarioStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$SuccessImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.userId);

  @override
  final int userId;

  @override
  String toString() {
    return 'RegistrarUsuarioState.successo(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cadastrando,
    required TResult Function(int userId) successo,
    required TResult Function(String message) erro,
  }) {
    return successo(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cadastrando,
    TResult? Function(int userId)? successo,
    TResult? Function(String message)? erro,
  }) {
    return successo?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cadastrando,
    TResult Function(int userId)? successo,
    TResult Function(String message)? erro,
    required TResult orElse(),
  }) {
    if (successo != null) {
      return successo(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Cadastrando value) cadastrando,
    required TResult Function(_Success value) successo,
    required TResult Function(_Error value) erro,
  }) {
    return successo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Cadastrando value)? cadastrando,
    TResult? Function(_Success value)? successo,
    TResult? Function(_Error value)? erro,
  }) {
    return successo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Cadastrando value)? cadastrando,
    TResult Function(_Success value)? successo,
    TResult Function(_Error value)? erro,
    required TResult orElse(),
  }) {
    if (successo != null) {
      return successo(this);
    }
    return orElse();
  }
}

abstract class _Success implements RegistrarUsuarioState {
  const factory _Success(final int userId) = _$SuccessImpl;

  int get userId;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$RegistrarUsuarioStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RegistrarUsuarioState.erro(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cadastrando,
    required TResult Function(int userId) successo,
    required TResult Function(String message) erro,
  }) {
    return erro(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cadastrando,
    TResult? Function(int userId)? successo,
    TResult? Function(String message)? erro,
  }) {
    return erro?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cadastrando,
    TResult Function(int userId)? successo,
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
    required TResult Function(_Success value) successo,
    required TResult Function(_Error value) erro,
  }) {
    return erro(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Cadastrando value)? cadastrando,
    TResult? Function(_Success value)? successo,
    TResult? Function(_Error value)? erro,
  }) {
    return erro?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Cadastrando value)? cadastrando,
    TResult Function(_Success value)? successo,
    TResult Function(_Error value)? erro,
    required TResult orElse(),
  }) {
    if (erro != null) {
      return erro(this);
    }
    return orElse();
  }
}

abstract class _Error implements RegistrarUsuarioState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
