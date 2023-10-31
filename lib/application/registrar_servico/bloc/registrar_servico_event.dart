part of 'registrar_servico_bloc.dart';

@freezed
class RegistrarServicoEvent with _$RegistrarServicoEvent {
  const factory RegistrarServicoEvent.started() = _Started;
}