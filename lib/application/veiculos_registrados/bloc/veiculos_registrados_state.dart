part of 'veiculos_registrados_bloc.dart';

@freezed
class VeiculosRegistradosState with _$VeiculosRegistradosState {
  const factory VeiculosRegistradosState.initial() = _Initial;
  const factory VeiculosRegistradosState.buscando() = _Buscando;
  const factory VeiculosRegistradosState.encontrados(List<Veiculo> veiculos, int? veiculoSelecionadoId) = _Encontrados;
  const factory VeiculosRegistradosState.vazio() = _Vazio;
  const factory VeiculosRegistradosState.erro(String mensagem) = _Erro;
  const factory VeiculosRegistradosState.selecionando(int veiculoId) = _Selecionando;
  const factory VeiculosRegistradosState.selecionadoSucesso() = _SelecionadoSucesso;
}
