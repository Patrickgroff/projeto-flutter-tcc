import 'package:gest_car/data/veiculo/datasources/veiculo_db.datasource.dart';
import 'package:gest_car/domain/veiculo/entities/veiculo.dart';
import 'package:gest_car/domain/veiculo/repositories/veiculo.repository.i.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IVeiculoRepository)
class VeiculoRepository implements IVeiculoRepository {
  // Inject datasource
  final VeiculoDBDatasource _veiculoDB;
  VeiculoRepository(this._veiculoDB);

  @override
  Future<bool> updateVeiculo(int id, Veiculo veiculo) => _veiculoDB.update(id, veiculo);

  @override
  Future<List<Veiculo>> get() => _veiculoDB.all;

  @override
  Future<Veiculo?> byId(int id) => _veiculoDB.byId(id);

  @override
  Future<Veiculo?> save(Veiculo veiculo) => _veiculoDB.save(veiculo);
}
