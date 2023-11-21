import 'package:gest_car/domain/usuario/entities/usuario.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

@injectable
class UsuarioDBDataSource {
  static const String table = 'usuario';
  final Database _db;

  UsuarioDBDataSource(this._db);

  Future<Usuario?> saveUsuario(Usuario usuario) async {
    final id = await _db.insert(table, usuario.toJson(), conflictAlgorithm: ConflictAlgorithm.replace);
    return id > 0 ? usuario.copyWith(id: id) : null;
  }

  Future<bool> updateUsuario(Usuario usuario, int? usuarioId) async {
    final result = await _db.update(table, usuario.toJson(), where: "id = ?", whereArgs: [usuarioId]);
    return result > 0;
  }

  Future<Usuario?> findUsuario(String telefone, String senha) async {
    final result = await _db.query(table, where: "telefone = ? and senha = ?", whereArgs: [telefone, senha]);
    return result.isEmpty ? null : Usuario.fromJson(result.first);
  }

  Future<bool> findPhoneNumber(String telefone) async {
    final result = await _db.query(table, where: "telefone = ?", whereArgs: [telefone]);
    return result.isNotEmpty;
  }

  Future<Usuario?> usuarioById(int usuarioId) async {
    final result = await _db.query(table, where: "id = ?", whereArgs: [usuarioId]);
    return result.isEmpty ? null : Usuario.fromJson(result.first);
  }
}
