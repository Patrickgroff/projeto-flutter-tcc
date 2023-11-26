import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'registrar_servico_event.dart';
part 'registrar_servico_state.dart';
part 'registrar_servico_bloc.freezed.dart';

@injectable
class RegistrarServicoBloc extends Bloc<RegistrarServicoEvent, RegistrarServicoState> {
  // Inject repository
  // final IRegistrarServicoRepository registrarServicoRepository;
  RegistrarServicoBloc(/* this.registrarServicoRepository */) : super(const _Initial()) {
    on<RegistrarServicoEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
