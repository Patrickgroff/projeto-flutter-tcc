import 'package:gest_car/data/receita/datasources/receita_db.datasource.dart';
import 'package:gest_car/domain/receita/entities/receita.dart';
import 'package:gest_car/domain/receita/repositories/receita.repository.i.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IReceitaRepository)
class ReceitaRepository implements IReceitaRepository {
  // Inject datasource
  final ReceitaDBDatasource _receitaDB;
  ReceitaRepository(this._receitaDB);

  @override
  Future<bool> updateReceita(Receita receita) => _receitaDB.update(receita.id!, receita);

  @override
  Future<List<Receita>> get() => _receitaDB.all;

  @override
  Future<Receita?> byId(int id) => _receitaDB.byId(id);

  @override
  Future<Receita?> save(Receita receita) => _receitaDB.save(receita);
}
