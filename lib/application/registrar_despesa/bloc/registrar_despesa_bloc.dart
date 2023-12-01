import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gest_car/domain/despesa/entities/despesa.dart';
import 'package:gest_car/domain/despesa/repositories/despesa.repository.i.dart';
import 'package:gest_car/domain/veiculo/repositories/veiculo.repository.i.dart';
import 'package:injectable/injectable.dart';

part 'registrar_despesa_bloc.freezed.dart';
part 'registrar_despesa_event.dart';
part 'registrar_despesa_state.dart';

@injectable
class RegistrarDespesaBloc extends Bloc<RegistrarDespesaEvent, RegistrarDespesaState> {
  // Inject repository
  final IDespesaRepository _despesaRepository;
  final IVeiculoRepository _veiculoRepository;
  RegistrarDespesaBloc(this._despesaRepository, this._veiculoRepository) : super(const _Initial()) {
    on<RegistrarDespesaEvent>((event, emit) => event.when(cadastrar: (despesa) async {
          emit(const RegistrarDespesaState.cadastrando());

          try {
            final veiculo = await _veiculoRepository.veiculoSelecionado;
            if (veiculo != null) {
              final resultado = await _despesaRepository.save(despesa.copyWith(veiculoId: veiculo.id));

              if (resultado == null || resultado.id == null) {
                return emit(const RegistrarDespesaState.erro('Erro ao cadastrar despesa!'));
              } else {
                emit(const RegistrarDespesaState.successo());
              }
            } else {
              return emit(const RegistrarDespesaState.erro('Veículo não selecionado!'));
            }
          } catch (e) {
            emit(const RegistrarDespesaState.erro('Erro ao cadastrar despesa!'));
          }
        }));
  }
}
