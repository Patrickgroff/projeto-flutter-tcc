import 'package:gest_car/data/usuario/datasources/usuario_datasource.db.dart';
import 'package:gest_car/data/usuario/datasources/usuario_shared_preference_datasource.db.dart';
import 'package:gest_car/domain/usuario/entities/usuario.dart';
import 'package:gest_car/domain/usuario/repositories/usuario.repository.i.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IUsuarioRepository)
class UsuarioRepository implements IUsuarioRepository {
  // Inject datasource
  final UsuarioDBDataSource usuarioDB;
  final UsuarioSharedPrefDataSource usuarioSP;

  UsuarioRepository({required this.usuarioDB, required this.usuarioSP});

  @override
  Future<Usuario?> save(Usuario value) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<bool> updateUsuario(Usuario value) async {
    // TODO: implement updateUser
    throw UnimplementedError();
  }

  @override
  Future<Usuario?> findUsuario(String telefone, String senha) => usuarioDB.findUsuario(telefone, senha);

  @override
  Future<bool> saveLoggedInUsuario(int loggedInUsuarioId) => usuarioSP.saveUsuarioIdInSession(loggedInUsuarioId);

  @override
  Future<Usuario?> get loggedInUsuario async {
    final usuarioId = usuarioSP.getUsuarioIdInSession();
    return usuarioId == null ? null : await usuarioDB.usuarioById(usuarioId);
  }
}
