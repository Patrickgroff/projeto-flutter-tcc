import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gest_car/domain/receita/entities/receita.dart';
import 'package:gest_car/domain/receita/repositories/receita.repository.i.dart';
import 'package:gest_car/domain/veiculo/repositories/veiculo.repository.i.dart';
import 'package:injectable/injectable.dart';

part 'registrar_receita_bloc.freezed.dart';
part 'registrar_receita_event.dart';
part 'registrar_receita_state.dart';

@injectable
class RegistrarReceitaBloc extends Bloc<RegistrarReceitaEvent, RegistrarReceitaState> {
  // Inject repository
  final IReceitaRepository _receitaRepository;
  final IVeiculoRepository _veiculoRepository;
  RegistrarReceitaBloc(this._receitaRepository, this._veiculoRepository) : super(const _Initial()) {
    on<RegistrarReceitaEvent>((event, emit) => event.when(cadastrar: (receita) async {
          emit(const RegistrarReceitaState.cadastrando());

          try {
            final veiculo = await _veiculoRepository.veiculoSelecionado;
            if (veiculo != null) {
              final resultado = await _receitaRepository.save(receita.copyWith(veiculoId: veiculo.id));

              if (resultado == null || resultado.id == null) {
                return emit(const RegistrarReceitaState.erro('Erro ao cadastrar receita!'));
              } else {
                emit(const RegistrarReceitaState.successo());
              }
            } else {
              return emit(const RegistrarReceitaState.erro('Veículo não selecionado!'));
            }
          } catch (e) {
            emit(const RegistrarReceitaState.erro('Erro ao cadastrar receita!'));
          }
        }));
  }
}
