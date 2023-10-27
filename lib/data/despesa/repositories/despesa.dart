import 'package:gest_car/domain/despesa/entities/despesa.dart';
import 'package:gest_car/domain/despesa/repositories/despesa.repository.i.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IDespesaRepository)
class DespesaRepository implements IDespesaRepository {
  // Inject datasource
  // final DespesaApiDatasource _despesaAPI;
  // DespesaRepository(_despesaAPI);

  @override
  Future<bool> updateDespesa(Despesa value) async {
    // TODO: implement updateDespesa
    throw UnimplementedError();
  }

  @override
  Future<List<Despesa>> get() async {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<Despesa> byId(int id) async {
    // TODO: implement getDespesa
    throw UnimplementedError();
  }

  @override
  Future<Despesa?> save(Despesa value) {
    // TODO: implement save
    throw UnimplementedError();
  }
}
