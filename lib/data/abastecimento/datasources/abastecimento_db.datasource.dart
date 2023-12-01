import 'package:gest_car/domain/abastecimento/entities/abastecimento.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

@injectable
class AbastecimentoDBDatasource {
  // TODO Change table name
  static const String _table = "abastecimento";
  final Database _db;
  AbastecimentoDBDatasource(this._db);

  Future<List<Abastecimento>> get all async {
    final result = await _db.query(_table);
    return result.map((item) => Abastecimento.fromJson(item)).toList();
  }

  Future<Abastecimento?> byId(int id) async {
    final result = await _db.query(_table, where: "id = ?", whereArgs: [id]);
    return result.isEmpty ? null : Abastecimento.fromJson(result.first);
  }

  Future<Abastecimento?> save(Abastecimento abastecimento) async {
    final id = await _db.insert(_table, abastecimento.toJson(), conflictAlgorithm: ConflictAlgorithm.replace);
    return id > 0 ? abastecimento.copyWith(id: id) : null;
  }

  Future<bool> update(int id, Abastecimento? abastecimento) async {
    final result = await _db.update(_table, abastecimento?.toJson() ?? {}, where: "id = ?", whereArgs: [id]);
    return result > 0;
  }

  Future<bool> hasAbastecimento(int id) async {
    final result = await _db.query(_table, where: "id = ?", whereArgs: [id]);
    return result.isNotEmpty;
  }

  Future<bool> remove(int id) async {
    final count = await _db.delete(_table, where: "id = ?", whereArgs: [id]);
    return count > 0;
  }
}
