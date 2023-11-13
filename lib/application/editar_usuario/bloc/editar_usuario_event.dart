part of 'editar_usuario_bloc.dart';

@freezed
class EditarUsuarioEvent with _$EditarUsuarioEvent {
  const factory EditarUsuarioEvent.started() = _Started;
}