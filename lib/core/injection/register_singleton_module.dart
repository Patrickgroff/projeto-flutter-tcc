import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

@module
abstract class RegisterSingletonModule {
  @preResolve
  @Order(-2)
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @preResolve
  @singleton
  @Order(-1)
  Future<Database> get db async => openDatabase(
        // Set the path to the database. Note: Using the `join` function from the
        // `path` package is best practice to ensure the path is correctly
        // constructed for each platform.
        join(await getDatabasesPath(), 'gest_car_database.db'),
        // When the database is first created, create a table to store dogs.
        onCreate: (db, version) async {
          //TODO Adicionar os scripts de criação das tabelas
          if (version == 1) {
            await db.execute(
              '''create table IF NOT EXISTS user(
                id INTEGER PRIMARY KEY,
                nome TEXT not NULL,
                telefone TEXT not NULL,
                senha TEXT not NULL
              )''',
            );
          }
        },
        // Set the version. This executes the onCreate function and provides a
        // path to perform database upgrades and downgrades.
        //TODO Alterar a versão quando for nescessario atualizar script das tabelas
        version: 1,
      );
}
