import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gest_car/domain/usuario/repositories/usuario.repository.i.dart';
import 'package:injectable/injectable.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final IUsuarioRepository _usuarioRepository;
  RegisterBloc(this._usuarioRepository) : super(_Initial()) {
    on<RegisterEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
