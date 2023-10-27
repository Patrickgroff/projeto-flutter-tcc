import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gest_car/domain/usuario/repositories/usuario.repository.i.dart';
import 'package:injectable/injectable.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IUsuarioRepository usuarioRepository;
  LoginBloc(this.usuarioRepository) : super(_Initial()) {
    on<LoginEvent>((event, emit) => event.when<FutureOr<void>>(
          login: (telefone, senha) async {
            emit(const LoginState.checkingCredentials());
            try {
              final usuario = await usuarioRepository.findUsuario(telefone, senha);
              if (usuario != null) {
                final success = await usuarioRepository.saveLoggedInUsuario(usuario.id);
                if (success) {
                  emit(const LoginState.success());
                } else {
                  emit(const LoginState.error('Erro inesperado ao iniciar a sessão do usuario logado!'));
                }
              } else {
                emit(const LoginState.error('Usuario não encontrado ou senha incorreta!'));
              }
            } catch (e) {
              //TODO logar no firebase
              emit(const LoginState.error('Erro inesperado ao efetuar login!'));
            }
          },
        ));
  }
}
