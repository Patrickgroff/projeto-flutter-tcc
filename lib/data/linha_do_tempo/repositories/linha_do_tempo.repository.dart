import 'package:gest_car/data/linha_do_tempo/datasources/linha_do_tempo_db.datasource.dart';
import 'package:gest_car/domain/linha_do_tempo/entities/linha_do_tempo.dart';
import 'package:gest_car/domain/linha_do_tempo/repositories/linha_do_tempo.repository.i.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ILinhaDoTempoRepository)
class LinhaDoTempoRepository implements ILinhaDoTempoRepository {
  // Inject datasource
  final LinhaDoTempoDBDatasource _db;
  const LinhaDoTempoRepository(this._db);

  @override
  Future<List<LinhaDoTempo>> getByVeiculoId(int veiculoId, bool ignorarAbastecimento, bool ignorarDespesa, bool ignorarReceita, bool ignorarServico) =>
      _db.getByVeiculoId(veiculoId, ignorarAbastecimento, ignorarDespesa, ignorarReceita, ignorarServico);
}
