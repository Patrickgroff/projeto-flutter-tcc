import 'package:gest_car/domain/linha_do_tempo/entities/linha_do_tempo.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

@injectable
class LinhaDoTempoDBDatasource {
  static const String _table = "linha_do_tempo_view";
  final Database _db;
  LinhaDoTempoDBDatasource(this._db);

  Future<List<LinhaDoTempo>> getByVeiculoId(int veiculoId, bool ignorarAbastecimento, bool ignorarDespesa, bool ignorarReceita, bool ignorarServico) async {
    String where = 'veiculoId = ?';

    if (ignorarAbastecimento) {
      where += " and tipo != 'abastecimento'";
    }
    if (ignorarDespesa) {
      where += " and tipo != 'despesa'";
    }
    if (ignorarReceita) {
      where += " and tipo != 'receita'";
    }
    if (ignorarServico) {
      where += " and tipo != 'servico'";
    }
    final result = await _db.query(_table, where: where, whereArgs: [veiculoId]);
    return result.map((item) => LinhaDoTempo.fromJson(item)).toList();
  }
}
