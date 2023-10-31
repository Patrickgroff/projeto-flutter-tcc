import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'registrar_receita_event.dart';
part 'registrar_receita_state.dart';
part 'registrar_receita_bloc.freezed.dart';

@injectable
class RegistrarReceitaBloc extends Bloc<RegistrarReceitaEvent, RegistrarReceitaState> {
  // Inject repository
  // final IRegistrarReceitaRepository registrarReceitaRepository;
  RegistrarReceitaBloc(/* this.registrarReceitaRepository */) : super(_Initial()) {
    on<RegistrarReceitaEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
