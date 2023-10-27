import 'package:gest_car/domain/veiculo/entities/veiculo.dart';
import 'package:gest_car/domain/veiculo/repositories/veiculo.repository.i.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IVeiculoRepository)
class VeiculoRepository implements IVeiculoRepository {
  // Inject datasource
  // final VeiculoApiDatasource _veiculoAPI;
  // VeiculoRepository(_veiculoAPI);

  @override
  Future<bool> updateVeiculo(Veiculo value) async {
    // TODO: implement updateVeiculo
    throw UnimplementedError();
  }

  @override
  Future<List<Veiculo>> get() async {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<Veiculo> byId(int id) async {
    // TODO: implement getVeiculo
    throw UnimplementedError();
  }

  @override
  Future<Veiculo?> save(Veiculo value) {
    // TODO: implement save
    throw UnimplementedError();
  }
}
