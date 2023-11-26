part of 'registrar_veiculo_bloc.dart';

@freezed
class RegistrarVeiculoEvent with _$RegistrarVeiculoEvent {
  const factory RegistrarVeiculoEvent.cadastrar(Veiculo veiculo, int usuarioId, int? veiculoId) = _Cadastrar;
}
