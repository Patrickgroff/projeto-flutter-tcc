import 'package:gest_car/domain/receita/entities/receita.dart';
import 'package:gest_car/domain/receita/repositories/receita.repository.i.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IReceitaRepository)
class ReceitaRepository implements IReceitaRepository {
  // Inject datasource
  // final ReceitaApiDatasource _receitaAPI;
  // ReceitaRepository(_receitaAPI);

  @override
  Future<bool> updateReceita(Receita value) async {
    // TODO: implement updateReceita
    throw UnimplementedError();
  }

  @override
  Future<List<Receita>> get() async {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<Receita> byId(int id) async {
    // TODO: implement getReceita
    throw UnimplementedError();
  }

  @override
  Future<Receita?> save(Receita value) {
    // TODO: implement save
    throw UnimplementedError();
  }
}
