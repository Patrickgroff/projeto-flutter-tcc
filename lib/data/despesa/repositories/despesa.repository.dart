import 'package:gest_car/data/despesa/datasources/despesa_db.datasource.dart';
import 'package:gest_car/domain/despesa/entities/despesa.dart';
import 'package:gest_car/domain/despesa/repositories/despesa.repository.i.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IDespesaRepository)
class DespesaRepository implements IDespesaRepository {
  // Inject datasource
  final DespesaDBDatasource _despesaDB;
  DespesaRepository(this._despesaDB);

  @override
  Future<bool> updateDespesa(Despesa despesa) => _despesaDB.update(despesa.id!, despesa);

  @override
  Future<List<Despesa>> get() => _despesaDB.all;

  @override
  Future<Despesa?> byId(int id) => _despesaDB.byId(id);

  @override
  Future<Despesa?> save(Despesa despesa) => _despesaDB.save(despesa);
}
