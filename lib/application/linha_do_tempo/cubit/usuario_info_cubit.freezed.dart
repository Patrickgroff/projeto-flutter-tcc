// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usuario_info_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsuarioInfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Usuario usuario) usuarioLogado,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Usuario usuario)? usuarioLogado,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Usuario usuario)? usuarioLogado,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UsuarioLogado value) usuarioLogado,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UsuarioLogado value)? usuarioLogado,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UsuarioLogado value)? usuarioLogado,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsuarioInfoStateCopyWith<$Res> {
  factory $UsuarioInfoStateCopyWith(
          UsuarioInfoState value, $Res Function(UsuarioInfoState) then) =
      _$UsuarioInfoStateCopyWithImpl<$Res, UsuarioInfoState>;
}

/// @nodoc
class _$UsuarioInfoStateCopyWithImpl<$Res, $Val extends UsuarioInfoState>
    implements $UsuarioInfoStateCopyWith<$Res> {
  _$UsuarioInfoStateCopyWithImpl(this._value, this._then);

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
    extends _$UsuarioInfoStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'UsuarioInfoState.initial()';
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
    required TResult Function(Usuario usuario) usuarioLogado,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Usuario usuario)? usuarioLogado,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Usuario usuario)? usuarioLogado,
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
    required TResult Function(_UsuarioLogado value) usuarioLogado,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UsuarioLogado value)? usuarioLogado,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UsuarioLogado value)? usuarioLogado,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UsuarioInfoState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$UsuarioLogadoImplCopyWith<$Res> {
  factory _$$UsuarioLogadoImplCopyWith(
          _$UsuarioLogadoImpl value, $Res Function(_$UsuarioLogadoImpl) then) =
      __$$UsuarioLogadoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Usuario usuario});

  $UsuarioCopyWith<$Res> get usuario;
}

/// @nodoc
class __$$UsuarioLogadoImplCopyWithImpl<$Res>
    extends _$UsuarioInfoStateCopyWithImpl<$Res, _$UsuarioLogadoImpl>
    implements _$$UsuarioLogadoImplCopyWith<$Res> {
  __$$UsuarioLogadoImplCopyWithImpl(
      _$UsuarioLogadoImpl _value, $Res Function(_$UsuarioLogadoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usuario = null,
  }) {
    return _then(_$UsuarioLogadoImpl(
      null == usuario
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as Usuario,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UsuarioCopyWith<$Res> get usuario {
    return $UsuarioCopyWith<$Res>(_value.usuario, (value) {
      return _then(_value.copyWith(usuario: value));
    });
  }
}

/// @nodoc

class _$UsuarioLogadoImpl implements _UsuarioLogado {
  const _$UsuarioLogadoImpl(this.usuario);

  @override
  final Usuario usuario;

  @override
  String toString() {
    return 'UsuarioInfoState.usuarioLogado(usuario: $usuario)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsuarioLogadoImpl &&
            (identical(other.usuario, usuario) || other.usuario == usuario));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usuario);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsuarioLogadoImplCopyWith<_$UsuarioLogadoImpl> get copyWith =>
      __$$UsuarioLogadoImplCopyWithImpl<_$UsuarioLogadoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Usuario usuario) usuarioLogado,
  }) {
    return usuarioLogado(usuario);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Usuario usuario)? usuarioLogado,
  }) {
    return usuarioLogado?.call(usuario);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Usuario usuario)? usuarioLogado,
    required TResult orElse(),
  }) {
    if (usuarioLogado != null) {
      return usuarioLogado(usuario);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UsuarioLogado value) usuarioLogado,
  }) {
    return usuarioLogado(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UsuarioLogado value)? usuarioLogado,
  }) {
    return usuarioLogado?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UsuarioLogado value)? usuarioLogado,
    required TResult orElse(),
  }) {
    if (usuarioLogado != null) {
      return usuarioLogado(this);
    }
    return orElse();
  }
}

abstract class _UsuarioLogado implements UsuarioInfoState {
  const factory _UsuarioLogado(final Usuario usuario) = _$UsuarioLogadoImpl;

  Usuario get usuario;
  @JsonKey(ignore: true)
  _$$UsuarioLogadoImplCopyWith<_$UsuarioLogadoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
