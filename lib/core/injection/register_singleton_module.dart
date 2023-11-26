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
            await db.execute('''
CREATE TABLE IF NOT EXISTS usuario (
    id       INTEGER PRIMARY KEY
                     NOT NULL,
    telefone TEXT    NOT NULL,
    senha    TEXT    NOT NULL,
    nome     TEXT    NOT NULL
);''');
            await db.execute('''
CREATE TABLE IF NOT EXISTS veiculo (
    id        INTEGER PRIMARY KEY
                      NOT NULL,
    veiculo   TEXT    NOT NULL,
    marca     TEXT    NOT NULL,
    ano       INTEGER NOT NULL,
    placa     TEXT    NOT NULL,
    odometro  REAL    NOT NULL,
    usuarioId INTEGER CONSTRAINT fk_veiculo_usuarioId_usuario_id REFERENCES usuario (id) 
                      NOT NULL
);''');
            await db.execute('''
CREATE TABLE IF NOT EXISTS abastecimento (
    id              INTEGER PRIMARY KEY
                            NOT NULL,
    data            TEXT    NOT NULL,
    odometro        REAL,
    tipoCombustivel TEXT,
    valor           REAL    NOT NULL,
    litros          REAL    NOT NULL,
    observacao       TEXT,
    veiculoId       INTEGER CONSTRAINT fk_abastecimento_veiculoId_veiculo_id REFERENCES veiculo (id) 
                            NOT NULL
);''');
            await db.execute('''
CREATE TABLE IF NOT EXISTS despesa (
    id          INTEGER PRIMARY KEY
                        NOT NULL,
    data        TEXT    NOT NULL,
    odometro    REAL,
    tipoDespesa TEXT,
    valor       REAL    NOT NULL,
    observacao   TEXT,
    veiculoId   INTEGER CONSTRAINT fk_despesa_veiculoId_veiculo_id REFERENCES veiculo (id) 
                        NOT NULL
);''');
            await db.execute('''
CREATE TABLE IF NOT EXISTS receita (
    id          INTEGER PRIMARY KEY
                        NOT NULL,
    data        TEXT    NOT NULL,
    odometro    REAL,
    valor       REAL    NOT NULL,
    tipoReceita TEXT,
    observacao   TEXT,
    veiculoId   INTEGER CONSTRAINT fk_receita_veiculoId_veiculo_id REFERENCES veiculo (id) 
                        NOT NULL
);''');
            await db.execute('''
CREATE TABLE IF NOT EXISTS servico (
    id          INTEGER PRIMARY KEY
                        NOT NULL,
    data        TEXT    NOT NULL,
    odometro    REAL,
    tipoServico TEXT,
    valor       REAL    NOT NULL,
    observacao  TEXT,
    veiculoId   INTEGER CONSTRAINT fk_servico_veiculoId_veiculo_id REFERENCES veiculo (id) 
                        NOT NULL
);''');
          }
        },
        // Set the version. This executes the onCreate function and provides a
        // path to perform database upgrades and downgrades.
        //TODO Alterar a versão quando for nescessario atualizar script das tabelas
        version: 1,
      );
}
