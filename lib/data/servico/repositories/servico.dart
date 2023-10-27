import 'package:gest_car/domain/servico/entities/servico.dart';
import 'package:gest_car/domain/servico/repositories/servico.repository.i.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IServicoRepository)
class ServicoRepository implements IServicoRepository {
  // Inject datasource
  // final ServicoApiDatasource _servicoAPI;
  // ServicoRepository(_servicoAPI);

  @override
  Future<bool> updateServico(Servico value) async {
    // TODO: implement updateServico
    throw UnimplementedError();
  }

  @override
  Future<List<Servico>> get() async {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<Servico> byId(int id) async {
    // TODO: implement getServico
    throw UnimplementedError();
  }

  @override
  Future<Servico?> save(Servico value) {
    // TODO: implement save
    throw UnimplementedError();
  }
}
