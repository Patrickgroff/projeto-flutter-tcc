part of 'registrar_receita_bloc.dart';

@freezed
class RegistrarReceitaState with _$RegistrarReceitaState {
  const factory RegistrarReceitaState.initial() = _Initial;
  const factory RegistrarReceitaState.cadastrando() = _Cadastrando;
  const factory RegistrarReceitaState.successo() = _Successo;
  const factory RegistrarReceitaState.erro(String message) = _Erro;
}
