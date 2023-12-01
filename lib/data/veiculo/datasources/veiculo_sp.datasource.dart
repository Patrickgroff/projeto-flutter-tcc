import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class VeiculoSPDatasource {
  static const String _veiculoSelecionado = "_veiculo_selecionado";
  final SharedPreferences _sp;
  const VeiculoSPDatasource(this._sp);

  Future<bool> salvarVeiculoSelecionado(int veiculoId) => _sp.setInt(_veiculoSelecionado, veiculoId);
  int? getVeiculoSelecionado() => _sp.getInt(_veiculoSelecionado);
  Future<bool> removerSelecionado() => _sp.remove(_veiculoSelecionado);
}
