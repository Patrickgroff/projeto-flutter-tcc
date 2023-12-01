part of 'registrar_abastecimento_bloc.dart';

@freezed
class RegistrarAbastecimentoEvent with _$RegistrarAbastecimentoEvent {
  const factory RegistrarAbastecimentoEvent.cadastrar(Abastecimento abastecimento) = _Cadastrar;
}