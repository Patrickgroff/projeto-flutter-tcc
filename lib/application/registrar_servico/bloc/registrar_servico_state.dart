part of 'registrar_servico_bloc.dart';

@freezed
class RegistrarServicoState with _$RegistrarServicoState {
  const factory RegistrarServicoState.initial() = _Initial;
  const factory RegistrarServicoState.cadastrando() = _Cadastrando;
  const factory RegistrarServicoState.successo() = _Successo;
  const factory RegistrarServicoState.erro(String message) = _Erro;
}
