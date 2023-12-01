import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';
import 'package:gest_car/domain/despesa/entities/despesa.dart';

@injectable
class DespesaDBDatasource {
	// TODO Change table name
  static const String _table = "despesa";
  final Database _db;
  DespesaDBDatasource(this._db);

  Future<List<Despesa>> get all async {
    final result = await _db.query(_table);
    return result.map((item) => Despesa.fromJson(item)).toList();
  }

  Future<Despesa?> byId(int id) async {
    final result = await _db.query(_table, where: "id = ?", whereArgs: [id]);
    return result.isEmpty ? null : Despesa.fromJson(result.first);
  }

  Future<Despesa?> save(Despesa despesa) async {
    final id = await _db.insert(_table, despesa.toJson(), conflictAlgorithm: ConflictAlgorithm.replace);
    return id > 0 ? despesa.copyWith(id: id) : null;
  }

  Future<bool> update(int id, Despesa? despesa) async {
    final result = await _db.update(_table, despesa?.toJson() ?? {}, where: "id = ?", whereArgs: [id]);
    return result > 0;
  }

  Future<bool> hasDespesa(int id) async {
    final result = await _db.query(_table, where: "id = ?", whereArgs: [id]);
    return result.isNotEmpty;
  }

  Future<bool> remove(int id) async {
    final count = await _db.delete(_table, where: "id = ?", whereArgs: [id]);
    return count > 0;
  }
}
