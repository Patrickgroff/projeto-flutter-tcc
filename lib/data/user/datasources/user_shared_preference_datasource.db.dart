import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class UserSharedPrefDataSource {
  static const String key = '_USER';
  final SharedPreferences _sp;

  const UserSharedPrefDataSource(this._sp);

  Future<bool> saveUserIdInSession(int userId) => _sp.setInt(key, userId);
  int? getUserIdInSession() => _sp.getInt(key);
}
