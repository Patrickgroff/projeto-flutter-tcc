part of 'registrar_despesa_bloc.dart';

@freezed
class RegistrarDespesaState with _$RegistrarDespesaState {
  const factory RegistrarDespesaState.initial() = _Initial;
  const factory RegistrarDespesaState.cadastrando() = _Cadastrando;
  const factory RegistrarDespesaState.successo() = _Successo;
  const factory RegistrarDespesaState.erro(String message) = _Erro;
}
