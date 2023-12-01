import 'package:gest_car/domain/despesa/entities/despesa.dart';

abstract class IDespesaRepository {
  Future<Despesa?> save(Despesa value);

  Future<bool> updateDespesa(Despesa value);

  Future<List<Despesa>> get();

  Future<Despesa?> byId(int id);
}
