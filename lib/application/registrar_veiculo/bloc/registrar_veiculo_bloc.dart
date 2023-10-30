import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'registrar_veiculo_event.dart';
part 'registrar_veiculo_state.dart';
part 'registrar_veiculo_bloc.freezed.dart';

@injectable
class RegistrarVeiculoBloc extends Bloc<RegistrarVeiculoEvent, RegistrarVeiculoState> {
  // Inject repository
  // final IRegistrarVeiculoRepository registrarVeiculoRepository;
  RegistrarVeiculoBloc(/* this.registrarVeiculoRepository */) : super(_Initial()) {
    on<RegistrarVeiculoEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
