import 'package:gest_car/data/abastecimento/datasources/abastecimento_db.datasource.dart';
import 'package:gest_car/domain/abastecimento/entities/abastecimento.dart';
import 'package:gest_car/domain/abastecimento/repositories/abastecimento.repository.i.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IAbastecimentoRepository)
class AbastecimentoRepository implements IAbastecimentoRepository {
  // Inject datasource
  final AbastecimentoDBDatasource _abastecimentoDB;
  AbastecimentoRepository(this._abastecimentoDB);

  @override
  Future<bool> updateAbastecimento(Abastecimento abastecimento) => _abastecimentoDB.update(abastecimento.id!, abastecimento);

  @override
  Future<List<Abastecimento>> get() => _abastecimentoDB.all;

  @override
  Future<Abastecimento?> byId(int id) => _abastecimentoDB.byId(id);

  @override
  Future<Abastecimento?> save(Abastecimento abastecimento) => _abastecimentoDB.save(abastecimento);
}
