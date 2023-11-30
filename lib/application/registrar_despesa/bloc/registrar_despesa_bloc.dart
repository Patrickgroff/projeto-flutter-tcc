import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gest_car/domain/despesa/entities/despesa.dart';
import 'package:gest_car/domain/despesa/repositories/despesa.repository.i.dart';
import 'package:injectable/injectable.dart';

part 'registrar_despesa_event.dart';
part 'registrar_despesa_state.dart';
part 'registrar_despesa_bloc.freezed.dart';

@injectable
class RegistrarDespesaBloc extends Bloc<RegistrarDespesaEvent, RegistrarDespesaState> {
  // Inject repository
  final IDespesaRepository despesaRepository;
  RegistrarDespesaBloc( this.despesaRepository ) : super(const _Initial()) {
    on<RegistrarDespesaEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
