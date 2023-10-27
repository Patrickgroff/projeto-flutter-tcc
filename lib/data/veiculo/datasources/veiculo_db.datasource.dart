import 'package:gest_car/domain/veiculo/entities/veiculo.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

@injectable
class VeiculoDBDatasource {
  // TODO Change table name
  static const String _table = "veiculo";
  final Database _db;
  VeiculoDBDatasource(this._db);

  Future<List<Veiculo>>? get all async {
    final result = await _db.query(_table);
    return result.map((item) => Veiculo.fromJson(item)).toList();
  }

  Future<Veiculo?> byId(int id) async {
    final result = await _db.query(_table, where: "id = ?", whereArgs: [id]);
    return result.isEmpty ? null : Veiculo.fromJson(result.first);
  }

  Future<Veiculo?> save(Veiculo veiculo) async {
    final id = await _db.insert(_table, veiculo.toJson(), conflictAlgorithm: ConflictAlgorithm.replace);
    return id > 0 ? veiculo.copyWith(id: id) : null;
  }

  Future<bool> update(int id, Veiculo? veiculo) async {
    final result = await _db.update(_table, veiculo?.toJson() ?? {}, where: "id = ?", whereArgs: [id]);
    return result > 0;
  }

  Future<bool> hasVeiculo(int id) async {
    final result = await _db.query(_table, where: "id = ?", whereArgs: [id]);
    return result.isNotEmpty;
  }

  Future<bool> remove(int id) async {
    final count = await _db.delete(_table, where: "id = ?", whereArgs: [id]);
    return count > 0;
  }
}
