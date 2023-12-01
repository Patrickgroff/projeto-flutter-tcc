part of 'registrar_usuario_bloc.dart';

@freezed
class RegistrarUsuarioState with _$RegistrarUsuarioState {
  const factory RegistrarUsuarioState.initial() = _Initial;
  const factory RegistrarUsuarioState.cadastrando() = _Cadastrando;
  const factory RegistrarUsuarioState.successo(int userId) = _Success;
  const factory RegistrarUsuarioState.erro(String message) = _Error;
}
