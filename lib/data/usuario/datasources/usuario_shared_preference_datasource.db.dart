import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class UsuarioSharedPrefDataSource {
  static const String key = '_USUARIO';
  final SharedPreferences _sp;

  const UsuarioSharedPrefDataSource(this._sp);

  Future<bool> saveUsuarioIdInSession(int usuarioId) => _sp.setInt(key, usuarioId);
  int? getUsuarioIdInSession() => _sp.getInt(key);
}
