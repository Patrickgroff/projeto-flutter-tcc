import 'package:gest_car/domain/veiculo/entities/veiculo.dart';

abstract class IVeiculoRepository {
  Future<Veiculo?> save(Veiculo value);

  Future<bool> updateVeiculo(Veiculo value);

  Future<List<Veiculo>> get();

  Future<Veiculo> byId(int id);
}
