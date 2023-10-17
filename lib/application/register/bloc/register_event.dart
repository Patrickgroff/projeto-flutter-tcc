part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.validateTelefone(String telefone) = _ValidateTelefone;
  const factory RegisterEvent.register(String nome, String telefone, String senha ) = _Register;
}