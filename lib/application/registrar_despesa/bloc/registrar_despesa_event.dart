part of 'registrar_despesa_bloc.dart';

@freezed
class RegistrarDespesaEvent with _$RegistrarDespesaEvent {
  const factory RegistrarDespesaEvent.cadastrar(Despesa despesa) = _Cadastrar;
}