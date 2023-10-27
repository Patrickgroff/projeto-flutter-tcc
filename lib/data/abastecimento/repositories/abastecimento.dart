import 'package:gest_car/domain/abastecimento/entities/abastecimento.dart';
import 'package:gest_car/domain/abastecimento/repositories/abastecimento.repository.i.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IAbastecimentoRepository)
class AbastecimentoRepository implements IAbastecimentoRepository {
  // Inject datasource
  // final AbastecimentoApiDatasource _abastecimentoAPI;
  // AbastecimentoRepository(_abastecimentoAPI);

  @override
  Future<bool> updateAbastecimento(Abastecimento value) async {
    // TODO: implement updateAbastecimento
    throw UnimplementedError();
  }

  @override
  Future<List<Abastecimento>> get() async {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<Abastecimento> byId(int id) async {
    // TODO: implement getAbastecimento
    throw UnimplementedError();
  }

  @override
  Future<Abastecimento?> save(Abastecimento value) {
    // TODO: implement save
    throw UnimplementedError();
  }
}
