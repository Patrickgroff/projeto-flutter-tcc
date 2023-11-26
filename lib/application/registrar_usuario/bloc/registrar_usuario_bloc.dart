import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gest_car/domain/usuario/entities/usuario.dart';
import 'package:gest_car/domain/usuario/repositories/usuario.repository.i.dart';
import 'package:injectable/injectable.dart';

part 'registrar_usuario_bloc.freezed.dart';
part 'registrar_usuario_event.dart';
part 'registrar_usuario_state.dart';

@injectable
class RegistrarUsuarioBloc extends Bloc<RegistrarUsuarioEvent, RegistrarUsuarioState> {
  // Inject repository
  final IUsuarioRepository _usuarioRepository;
  RegistrarUsuarioBloc(this._usuarioRepository) : super(const _Initial()) {
    on<RegistrarUsuarioEvent>((event, emit) => event.when<FutureOr<void>>(cadastrar: (usuario) async {
          emit(const RegistrarUsuarioState.cadastrando());

          try {
            final resultado = await _usuarioRepository.save(usuario);
            if (resultado == null || resultado.id == null) return emit(const RegistrarUsuarioState.error('Erro ao cadastrar usuario!'));
            emit(RegistrarUsuarioState.success(resultado.id!));
          } catch (e) {
            emit(const RegistrarUsuarioState.error('Erro ao cadastrar usuario!'));
          }
        }));
  }
}
