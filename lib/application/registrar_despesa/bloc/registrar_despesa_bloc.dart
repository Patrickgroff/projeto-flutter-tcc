import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'registrar_despesa_event.dart';
part 'registrar_despesa_state.dart';
part 'registrar_despesa_bloc.freezed.dart';

@injectable
class RegistrarDespesaBloc extends Bloc<RegistrarDespesaEvent, RegistrarDespesaState> {
  // Inject repository
  // final IRegistrarDespesaRepository registrarDespesaRepository;
  RegistrarDespesaBloc(/* this.registrarDespesaRepository */) : super(_Initial()) {
    on<RegistrarDespesaEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
