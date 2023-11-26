import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'registrar_abastecimento_event.dart';
part 'registrar_abastecimento_state.dart';
part 'registrar_abastecimento_bloc.freezed.dart';

@injectable
class RegistrarAbastecimentoBloc extends Bloc<RegistrarAbastecimentoEvent, RegistrarAbastecimentoState> {
  // Inject repository
  // final IRegistrarAbastecimentoRepository registrarAbastecimentoRepository;
  RegistrarAbastecimentoBloc(/* this.registrarAbastecimentoRepository */) : super(const _Initial()) {
    on<RegistrarAbastecimentoEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
