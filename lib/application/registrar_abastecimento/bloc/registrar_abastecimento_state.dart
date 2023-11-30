part of 'registrar_abastecimento_bloc.dart';

@freezed
class RegistrarAbastecimentoState with _$RegistrarAbastecimentoState {
  const factory RegistrarAbastecimentoState.initial() = _Initial;
  const factory RegistrarAbastecimentoState.cadastrando() = _Cadastrando;
  const factory RegistrarAbastecimentoState.successo() = _Successo;
  const factory RegistrarAbastecimentoState.erro(String message) = _Erro;
}
