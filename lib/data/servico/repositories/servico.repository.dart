import 'package:gest_car/data/servico/datasources/servico_db.datasource.dart';
import 'package:gest_car/domain/servico/entities/servico.dart';
import 'package:gest_car/domain/servico/repositories/servico.repository.i.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IServicoRepository)
class ServicoRepository implements IServicoRepository {
  // Inject datasource
  final ServicoDBDatasource _servicoDB;
  ServicoRepository(this._servicoDB);

  @override
  Future<bool> updateServico(Servico servico) => _servicoDB.update(servico.id!, servico);
  @override
  Future<List<Servico>> get() => _servicoDB.all;

  @override
  Future<Servico?> byId(int id) => _servicoDB.byId(id);


  @override
  Future<Servico?> save(Servico servico)  => _servicoDB.save(servico);
}
