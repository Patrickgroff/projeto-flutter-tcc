import 'package:gest_car/domain/linha_do_tempo/entities/linha_do_tempo.dart';

abstract class ILinhaDoTempoRepository {
  Future<List<LinhaDoTempo>> getByVeiculoId(int veiculoId, bool ignorarAbastecimento, bool ignorarDespesa, bool ignorarReceita, bool ignorarServico);
}
