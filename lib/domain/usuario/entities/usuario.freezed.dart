// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usuario.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Usuario _$UsuarioFromJson(Map<String, dynamic> json) {
  return _Usuario.fromJson(json);
}

/// @nodoc
mixin _$Usuario {
  @JsonKey(includeIfNull: false)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String get nome => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String get telefone => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String get senha => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsuarioCopyWith<Usuario> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsuarioCopyWith<$Res> {
  factory $UsuarioCopyWith(Usuario value, $Res Function(Usuario) then) =
      _$UsuarioCopyWithImpl<$Res, Usuario>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int id,
      @JsonKey(includeIfNull: false) String nome,
      @JsonKey(includeIfNull: false) String telefone,
      @JsonKey(includeIfNull: false) String senha});
}

/// @nodoc
class _$UsuarioCopyWithImpl<$Res, $Val extends Usuario>
    implements $UsuarioCopyWith<$Res> {
  _$UsuarioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nome = null,
    Object? telefone = null,
    Object? senha = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      telefone: null == telefone
          ? _value.telefone
          : telefone // ignore: cast_nullable_to_non_nullable
              as String,
      senha: null == senha
          ? _value.senha
          : senha // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsuarioImplCopyWith<$Res> implements $UsuarioCopyWith<$Res> {
  factory _$$UsuarioImplCopyWith(
          _$UsuarioImpl value, $Res Function(_$UsuarioImpl) then) =
      __$$UsuarioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int id,
      @JsonKey(includeIfNull: false) String nome,
      @JsonKey(includeIfNull: false) String telefone,
      @JsonKey(includeIfNull: false) String senha});
}

/// @nodoc
class __$$UsuarioImplCopyWithImpl<$Res>
    extends _$UsuarioCopyWithImpl<$Res, _$UsuarioImpl>
    implements _$$UsuarioImplCopyWith<$Res> {
  __$$UsuarioImplCopyWithImpl(
      _$UsuarioImpl _value, $Res Function(_$UsuarioImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nome = null,
    Object? telefone = null,
    Object? senha = null,
  }) {
    return _then(_$UsuarioImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      telefone: null == telefone
          ? _value.telefone
          : telefone // ignore: cast_nullable_to_non_nullable
              as String,
      senha: null == senha
          ? _value.senha
          : senha // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$UsuarioImpl extends _Usuario {
  const _$UsuarioImpl(
      {@JsonKey(includeIfNull: false) required this.id,
      @JsonKey(includeIfNull: false) required this.nome,
      @JsonKey(includeIfNull: false) required this.telefone,
      @JsonKey(includeIfNull: false) required this.senha})
      : super._();

  factory _$UsuarioImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsuarioImplFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final int id;
  @override
  @JsonKey(includeIfNull: false)
  final String nome;
  @override
  @JsonKey(includeIfNull: false)
  final String telefone;
  @override
  @JsonKey(includeIfNull: false)
  final String senha;

  @override
  String toString() {
    return 'Usuario(id: $id, nome: $nome, telefone: $telefone, senha: $senha)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsuarioImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.telefone, telefone) ||
                other.telefone == telefone) &&
            (identical(other.senha, senha) || other.senha == senha));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nome, telefone, senha);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsuarioImplCopyWith<_$UsuarioImpl> get copyWith =>
      __$$UsuarioImplCopyWithImpl<_$UsuarioImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsuarioImplToJson(
      this,
    );
  }
}

abstract class _Usuario extends Usuario {
  const factory _Usuario(
          {@JsonKey(includeIfNull: false) required final int id,
          @JsonKey(includeIfNull: false) required final String nome,
          @JsonKey(includeIfNull: false) required final String telefone,
          @JsonKey(includeIfNull: false) required final String senha}) =
      _$UsuarioImpl;
  const _Usuario._() : super._();

  factory _Usuario.fromJson(Map<String, dynamic> json) = _$UsuarioImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  int get id;
  @override
  @JsonKey(includeIfNull: false)
  String get nome;
  @override
  @JsonKey(includeIfNull: false)
  String get telefone;
  @override
  @JsonKey(includeIfNull: false)
  String get senha;
  @override
  @JsonKey(ignore: true)
  _$$UsuarioImplCopyWith<_$UsuarioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
