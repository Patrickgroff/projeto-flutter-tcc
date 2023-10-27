import 'package:gest_car/domain/receita/entities/receita.dart';

abstract class IReceitaRepository {
  Future<Receita?> save(Receita value);

  Future<bool> updateReceita(Receita value);

  Future<List<Receita>> get();

  Future<Receita> byId(int id);
}
