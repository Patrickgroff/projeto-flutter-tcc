import 'package:gest_car/domain/abastecimento/entities/abastecimento.dart';

abstract class IAbastecimentoRepository {
  Future<Abastecimento?> save(Abastecimento value);

  Future<bool> updateAbastecimento(Abastecimento value);

  Future<List<Abastecimento>> get();

  Future<Abastecimento> byId(int id);
}
