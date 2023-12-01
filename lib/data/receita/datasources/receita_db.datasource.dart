import 'package:gest_car/domain/receita/entities/receita.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

@injectable
class ReceitaDBDatasource {
  // TODO Change table name
  static const String _table = "receita";
  final Database _db;
  ReceitaDBDatasource(this._db);

  Future<List<Receita>> get all async {
    final result = await _db.query(_table);
    return result.map((item) => Receita.fromJson(item)).toList();
  }

  Future<Receita?> byId(int id) async {
    final result = await _db.query(_table, where: "id = ?", whereArgs: [id]);
    return result.isEmpty ? null : Receita.fromJson(result.first);
  }

  Future<Receita?> save(Receita receita) async {
    final id = await _db.insert(_table, receita.toJson(), conflictAlgorithm: ConflictAlgorithm.replace);
    return id > 0 ? receita.copyWith(id: id) : null;
  }

  Future<bool> update(int id, Receita? receita) async {
    final result = await _db.update(_table, receita?.toJson() ?? {}, where: "id = ?", whereArgs: [id]);
    return result > 0;
  }

  Future<bool> hasReceita(int id) async {
    final result = await _db.query(_table, where: "id = ?", whereArgs: [id]);
    return result.isNotEmpty;
  }

  Future<bool> remove(int id) async {
    final count = await _db.delete(_table, where: "id = ?", whereArgs: [id]);
    return count > 0;
  }
}
