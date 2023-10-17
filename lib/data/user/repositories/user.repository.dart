import 'package:gest_car/data/user/datasources/user_datasource.db.dart';
import 'package:gest_car/data/user/datasources/user_shared_preference_datasource.db.dart';
import 'package:gest_car/domain/user/entities/user.dart';
import 'package:gest_car/domain/user/repositories/user.repository.i.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IUserRepository)
class UserRepository implements IUserRepository {
  // Inject datasource
  final UserDBDataSource userDB;
  final UserSharedPrefDataSource userSP;

  UserRepository({required this.userDB, required this.userSP});

  @override
  Future<User?> save(User value) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<bool> updateUser(User value) async {
    // TODO: implement updateUser
    throw UnimplementedError();
  }

  @override
  Future<User?> findUser(String telefone, String senha) => userDB.findUser(telefone, senha);

  @override
  Future<bool> saveLoggedInUser(int loggedInUserId) => userSP.saveUserIdInSession(loggedInUserId);

  @override
  Future<User?> get loggedInUser async {
    final userId = userSP.getUserIdInSession();
    return userId == null ? null : await userDB.userById(userId);
  }
}
