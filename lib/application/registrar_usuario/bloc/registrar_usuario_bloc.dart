import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'registrar_usuario_event.dart';
part 'registrar_usuario_state.dart';
part 'registrar_usuario_bloc.freezed.dart';

@injectable
class RegistrarUsuarioBloc extends Bloc<RegistrarUsuarioEvent, RegistrarUsuarioState> {
  // Inject repository
  // final IRegistrarUsuarioRepository registrarUsuarioRepository;
  RegistrarUsuarioBloc(/* this.registrarUsuarioRepository */) : super(_Initial()) {
    on<RegistrarUsuarioEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
