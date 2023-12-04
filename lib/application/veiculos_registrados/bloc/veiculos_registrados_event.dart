part of 'veiculos_registrados_bloc.dart';

@freezed
class VeiculosRegistradosEvent with _$VeiculosRegistradosEvent {
  const factory VeiculosRegistradosEvent.buscarVeiculos() = _BuscarVeiculo;
  const factory VeiculosRegistradosEvent.selecionarVeiculo(int? id) = _SelecionarVeiculo;
}