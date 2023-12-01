import 'package:gest_car/domain/veiculo/entities/veiculo.dart';

abstract class IVeiculoRepository {
  Future<Veiculo?> save(Veiculo value);

  Future<bool> updateVeiculo(int id, Veiculo value);

  Future<List<Veiculo>> get();

  Future<Veiculo?> byId(int id);

  /// salva o id do veiculo selecionado pelo usuario
  Future<bool> salvarVeiculoSelecionado(int veiculoId);

  /// remover
  Future<bool> removerVeiculoSelecionado();

  /// retorna veiculo selecionado pelo usuario
  /// caso retorno <code>null</code> significa que o usuario não selecionou um veiculo
  Future<Veiculo?> get veiculoSelecionado;
}
