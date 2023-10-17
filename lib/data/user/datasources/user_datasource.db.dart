import 'package:gest_car/domain/user/entities/user.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

@injectable
class UserDBDataSource {
  static const String table = 'user';
  final Database _db;

  UserDBDataSource(this._db);

  Future<User?> saveUser(User user) async {
    final id = await _db.insert(table, user.toJson(), conflictAlgorithm: ConflictAlgorithm.replace);
    return id > 0 ? user.copyWith(id: id) : null;
  }

  Future<bool> updateUser(User user, int userId) async {
    final result = await _db.update(table, user.toJson(), where: "id = ?", whereArgs: [userId]);
    return result > 0;
  }

  Future<User?> findUser(String telefone, String senha) async {
    final result = await _db.query(table, where: "telefone = ? and senha = ?", whereArgs: [telefone, senha]);
    return result.isEmpty ? null : User.fromJson(result.first);
  }

  Future<User?> userById(int userId) async {
    final result = await _db.query(table, where: "id = ?", whereArgs: [userId]);
    return result.isEmpty ? null : User.fromJson(result.first);
  }
}
