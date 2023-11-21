part of 'registrar_usuario_bloc.dart';

@freezed
class RegistrarUsuarioEvent with _$RegistrarUsuarioEvent {
  const factory RegistrarUsuarioEvent.cadastrar(Usuario usuario) = _Cadastrar;
}