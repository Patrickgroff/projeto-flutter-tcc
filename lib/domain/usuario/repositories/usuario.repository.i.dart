import 'package:gest_car/domain/usuario/entities/usuario.dart';

abstract class IUsuarioRepository {
  /// salva um novo usuario no banco de dados
  Future<Usuario?> save(Usuario value);

  /// Atualiza as informações do usuario
  Future<bool> updateUsuario(Usuario value);

  /// procura um usuario pelo telefone e senha
  /// caso retorno <code>null</code> não foi encontrado um usuario com os parametros enviados
  Future<Usuario?> findUsuario(String telefone, String senha);

  /// salva o id do usuario passado como parametro na sessão para identificar o
  /// usuario que esta logado na aplicação para manter a
  /// sessão mesmo apos o usuario fechar o aplicativo e entrar novamente
  Future<bool> saveLoggedInUsuario(int loggedInUsuarioId);

  /// retorna usuario que esta logado atualmente na aplicação
  /// caso retorno <code>null</code> significa que não tem um usuario logado
  Future<Usuario?> get loggedInUsuario;
}
