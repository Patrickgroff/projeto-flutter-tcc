part of 'registrar_veiculo_bloc.dart';

@freezed
class RegistrarVeiculoState with _$RegistrarVeiculoState {
  const factory RegistrarVeiculoState.initial() = _Initial;
  const factory RegistrarVeiculoState.cadastrando() = _Cadastrando;
  const factory RegistrarVeiculoState.successo() = _Successo;
  const factory RegistrarVeiculoState.erro(String message) = _Erro;
}
