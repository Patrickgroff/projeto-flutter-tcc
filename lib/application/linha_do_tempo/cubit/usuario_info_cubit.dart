import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gest_car/domain/usuario/entities/usuario.dart';
import 'package:gest_car/domain/usuario/repositories/usuario.repository.i.dart';
import 'package:injectable/injectable.dart';

part 'usuario_info_cubit.freezed.dart';
part 'usuario_info_state.dart';

@injectable
class UsuarioInfoCubit extends Cubit<UsuarioInfoState> {
  IUsuarioRepository _usuarioRepository;
  UsuarioInfoCubit(this._usuarioRepository) : super(UsuarioInfoState.initial());

  buscarUsuarioLogado() async {
    final usuario = await _usuarioRepository.loggedInUsuario;
    if (usuario != null) {
      emit(UsuarioInfoState.usuarioLogado(usuario));
    }
  }
}
