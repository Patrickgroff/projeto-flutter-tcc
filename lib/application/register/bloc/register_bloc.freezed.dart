// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterEvent {
  String get telefone => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String telefone) validateTelefone,
    required TResult Function(String nome, String telefone, String senha)
        register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String telefone)? validateTelefone,
    TResult? Function(String nome, String telefone, String senha)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String telefone)? validateTelefone,
    TResult Function(String nome, String telefone, String senha)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidateTelefone value) validateTelefone,
    required TResult Function(_Register value) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateTelefone value)? validateTelefone,
    TResult? Function(_Register value)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateTelefone value)? validateTelefone,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterEventCopyWith<RegisterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
  @useResult
  $Res call({String telefone});
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? telefone = null,
  }) {
    return _then(_value.copyWith(
      telefone: null == telefone
          ? _value.telefone
          : telefone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidateTelefoneImplCopyWith<$Res>
    implements $RegisterEventCopyWith<$Res> {
  factory _$$ValidateTelefoneImplCopyWith(_$ValidateTelefoneImpl value,
          $Res Function(_$ValidateTelefoneImpl) then) =
      __$$ValidateTelefoneImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String telefone});
}

/// @nodoc
class __$$ValidateTelefoneImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$ValidateTelefoneImpl>
    implements _$$ValidateTelefoneImplCopyWith<$Res> {
  __$$ValidateTelefoneImplCopyWithImpl(_$ValidateTelefoneImpl _value,
      $Res Function(_$ValidateTelefoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? telefone = null,
  }) {
    return _then(_$ValidateTelefoneImpl(
      null == telefone
          ? _value.telefone
          : telefone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ValidateTelefoneImpl implements _ValidateTelefone {
  const _$ValidateTelefoneImpl(this.telefone);

  @override
  final String telefone;

  @override
  String toString() {
    return 'RegisterEvent.validateTelefone(telefone: $telefone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateTelefoneImpl &&
            (identical(other.telefone, telefone) ||
                other.telefone == telefone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, telefone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateTelefoneImplCopyWith<_$ValidateTelefoneImpl> get copyWith =>
      __$$ValidateTelefoneImplCopyWithImpl<_$ValidateTelefoneImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String telefone) validateTelefone,
    required TResult Function(String nome, String telefone, String senha)
        register,
  }) {
    return validateTelefone(telefone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String telefone)? validateTelefone,
    TResult? Function(String nome, String telefone, String senha)? register,
  }) {
    return validateTelefone?.call(telefone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String telefone)? validateTelefone,
    TResult Function(String nome, String telefone, String senha)? register,
    required TResult orElse(),
  }) {
    if (validateTelefone != null) {
      return validateTelefone(telefone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidateTelefone value) validateTelefone,
    required TResult Function(_Register value) register,
  }) {
    return validateTelefone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateTelefone value)? validateTelefone,
    TResult? Function(_Register value)? register,
  }) {
    return validateTelefone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateTelefone value)? validateTelefone,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (validateTelefone != null) {
      return validateTelefone(this);
    }
    return orElse();
  }
}

abstract class _ValidateTelefone implements RegisterEvent {
  const factory _ValidateTelefone(final String telefone) =
      _$ValidateTelefoneImpl;

  @override
  String get telefone;
  @override
  @JsonKey(ignore: true)
  _$$ValidateTelefoneImplCopyWith<_$ValidateTelefoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res>
    implements $RegisterEventCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nome, String telefone, String senha});
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nome = null,
    Object? telefone = null,
    Object? senha = null,
  }) {
    return _then(_$RegisterImpl(
      null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      null == telefone
          ? _value.telefone
          : telefone // ignore: cast_nullable_to_non_nullable
              as String,
      null == senha
          ? _value.senha
          : senha // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterImpl implements _Register {
  const _$RegisterImpl(this.nome, this.telefone, this.senha);

  @override
  final String nome;
  @override
  final String telefone;
  @override
  final String senha;

  @override
  String toString() {
    return 'RegisterEvent.register(nome: $nome, telefone: $telefone, senha: $senha)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterImpl &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.telefone, telefone) ||
                other.telefone == telefone) &&
            (identical(other.senha, senha) || other.senha == senha));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nome, telefone, senha);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      __$$RegisterImplCopyWithImpl<_$RegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String telefone) validateTelefone,
    required TResult Function(String nome, String telefone, String senha)
        register,
  }) {
    return register(nome, telefone, senha);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String telefone)? validateTelefone,
    TResult? Function(String nome, String telefone, String senha)? register,
  }) {
    return register?.call(nome, telefone, senha);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String telefone)? validateTelefone,
    TResult Function(String nome, String telefone, String senha)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(nome, telefone, senha);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidateTelefone value) validateTelefone,
    required TResult Function(_Register value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateTelefone value)? validateTelefone,
    TResult? Function(_Register value)? register,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateTelefone value)? validateTelefone,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements RegisterEvent {
  const factory _Register(
          final String nome, final String telefone, final String senha) =
      _$RegisterImpl;

  String get nome;
  @override
  String get telefone;
  String get senha;
  @override
  @JsonKey(ignore: true)
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() saving,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? saving,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saving,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saving value)? saving,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

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
    extends _$RegisterStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'RegisterState.initial()';
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
    required TResult Function() saving,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? saving,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saving,
    TResult Function()? success,
    TResult Function(String message)? error,
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
    required TResult Function(_Saving value) saving,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saving value)? saving,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RegisterState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SavingImplCopyWith<$Res> {
  factory _$$SavingImplCopyWith(
          _$SavingImpl value, $Res Function(_$SavingImpl) then) =
      __$$SavingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavingImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$SavingImpl>
    implements _$$SavingImplCopyWith<$Res> {
  __$$SavingImplCopyWithImpl(
      _$SavingImpl _value, $Res Function(_$SavingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SavingImpl implements _Saving {
  const _$SavingImpl();

  @override
  String toString() {
    return 'RegisterState.saving()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SavingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() saving,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return saving();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? saving,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return saving?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saving,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return saving(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return saving?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saving value)? saving,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving(this);
    }
    return orElse();
  }
}

abstract class _Saving implements RegisterState {
  const factory _Saving() = _$SavingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'RegisterState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() saving,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? saving,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saving,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saving value)? saving,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements RegisterState {
  const factory _Success() = _$SuccessImpl;
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
    extends _$RegisterStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'RegisterState.error(message: $message)';
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
    required TResult Function() saving,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? saving,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saving,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saving value)? saving,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements RegisterState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
