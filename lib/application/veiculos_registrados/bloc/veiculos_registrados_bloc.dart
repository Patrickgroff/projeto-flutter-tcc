import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'veiculos_registrados_event.dart';
part 'veiculos_registrados_state.dart';
part 'veiculos_registrados_bloc.freezed.dart';

@injectable
class VeiculosRegistradosBloc extends Bloc<VeiculosRegistradosEvent, VeiculosRegistradosState> {
  // Inject repository
  // final IVeiculosRegistradosRepository veiculosRegistradosRepository;
  VeiculosRegistradosBloc(/* this.veiculosRegistradosRepository */) : super(const _Initial()) {
    on<VeiculosRegistradosEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
