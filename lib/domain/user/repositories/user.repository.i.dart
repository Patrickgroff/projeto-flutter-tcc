import 'package:gest_car/domain/user/entities/user.dart';

abstract class IUserRepository {
  /// salva um novo usuario no banco de dados
  Future<User?> save(User value);

  /// Atualiza as informações do usuario
  Future<bool> updateUser(User value);

  /// procura um usuario pelo telefone e senha
  /// caso retorno <code>null</code> não foi encontrado um usuario com os parametros enviados
  Future<User?> findUser(String telefone, String senha);

  /// salva o id do usuario passado como parametro na sessão para identificar o
  /// usuario que esta logado na aplicação para manter a
  /// sessão mesmo apos o usuario fechar o aplicativo e entrar novamente
  Future<bool> saveLoggedInUser(int loggedInUserId);

  /// retorna usuario que esta logado atualmente na aplicação
  /// caso retorno <code>null</code> significa que não tem um usuario logado
  Future<User?> get loggedInUser;
}
