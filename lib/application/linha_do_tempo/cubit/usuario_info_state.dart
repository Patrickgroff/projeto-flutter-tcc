part of 'usuario_info_cubit.dart';

@freezed
class UsuarioInfoState with _$UsuarioInfoState {
  const factory UsuarioInfoState.initial() = _Initial;
  const factory UsuarioInfoState.usuarioLogado(Usuario usuario) = _UsuarioLogado;
}
