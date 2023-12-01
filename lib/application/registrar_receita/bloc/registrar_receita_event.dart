part of 'registrar_receita_bloc.dart';

@freezed
class RegistrarReceitaEvent with _$RegistrarReceitaEvent {
  const factory RegistrarReceitaEvent.cadastrar(Receita receita) = _Cadastrar;
}