import 'package:gest_car/domain/servico/entities/servico.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

@injectable
class ServicoDBDatasource {
  // TODO Change table name
  static const String _table = "servico";
  final Database _db;
  ServicoDBDatasource(this._db);

  Future<List<Servico>> get all async {
    final result = await _db.query(_table);
    return result.map((item) => Servico.fromJson(item)).toList();
  }

  Future<Servico?> byId(int id) async {
    final result = await _db.query(_table, where: "id = ?", whereArgs: [id]);
    return result.isEmpty ? null : Servico.fromJson(result.first);
  }

  Future<Servico?> save(Servico servico) async {
    final id = await _db.insert(_table, servico.toJson(), conflictAlgorithm: ConflictAlgorithm.replace);
    return id > 0 ? servico.copyWith(id: id) : null;
  }

  Future<bool> update(int id, Servico? servico) async {
    final result = await _db.update(_table, servico?.toJson() ?? {}, where: "id = ?", whereArgs: [id]);
    return result > 0;
  }

  Future<bool> hasServico(int id) async {
    final result = await _db.query(_table, where: "id = ?", whereArgs: [id]);
    return result.isNotEmpty;
  }

  Future<bool> remove(int id) async {
    final count = await _db.delete(_table, where: "id = ?", whereArgs: [id]);
    return count > 0;
  }
}
