import 'package:gest_car/domain/servico/entities/servico.dart';

abstract class IServicoRepository {
  Future<Servico?> save(Servico value);

  Future<bool> updateServico(Servico value);

  Future<List<Servico>> get();

  Future<Servico?> byId(int id);
}
