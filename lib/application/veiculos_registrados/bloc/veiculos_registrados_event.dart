part of 'veiculos_registrados_bloc.dart';

@freezed
class VeiculosRegistradosEvent with _$VeiculosRegistradosEvent {
  const factory VeiculosRegistradosEvent.started() = _Started;
}