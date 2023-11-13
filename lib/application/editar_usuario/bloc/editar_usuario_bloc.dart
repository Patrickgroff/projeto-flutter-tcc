import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'editar_usuario_event.dart';
part 'editar_usuario_state.dart';
part 'editar_usuario_bloc.freezed.dart';

@injectable
class EditarUsuarioBloc extends Bloc<EditarUsuarioEvent, EditarUsuarioState> {
  // Inject repository
  // final IEditarUsuarioRepository editarUsuarioRepository;
  EditarUsuarioBloc(/* this.editarUsuarioRepository */) : super(_Initial()) {
    on<EditarUsuarioEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
