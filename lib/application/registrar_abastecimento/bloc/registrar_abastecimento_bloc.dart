import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gest_car/domain/abastecimento/entities/abastecimento.dart';
import 'package:gest_car/domain/abastecimento/repositories/abastecimento.repository.i.dart';
import 'package:gest_car/domain/veiculo/repositories/veiculo.repository.i.dart';
import 'package:injectable/injectable.dart';

part 'registrar_abastecimento_bloc.freezed.dart';
part 'registrar_abastecimento_event.dart';
part 'registrar_abastecimento_state.dart';

@injectable
class RegistrarAbastecimentoBloc extends Bloc<RegistrarAbastecimentoEvent, RegistrarAbastecimentoState> {
  // Inject repository
  final IAbastecimentoRepository _abastecimentoRepository;
  final IVeiculoRepository _veiculoRepository;
  RegistrarAbastecimentoBloc(this._abastecimentoRepository, this._veiculoRepository) : super(const _Initial()) {
    on<RegistrarAbastecimentoEvent>((event, emit) => event.when(cadastrar: (abastecimento) async {
          emit(const RegistrarAbastecimentoState.cadastrando());

          try {
            final veiculo = await _veiculoRepository.veiculoSelecionado;
            if (veiculo != null) {
              final resultado = await _abastecimentoRepository.save(abastecimento.copyWith(veiculoId: veiculo.id));

              if (resultado == null || resultado.id == null) {
                return emit(const RegistrarAbastecimentoState.erro('Erro ao cadastrar abastecimento!'));
              } else {
                emit(const RegistrarAbastecimentoState.successo());
              }
            } else {
              return emit(const RegistrarAbastecimentoState.erro('Veículo não selecionado!'));
            }
          } catch (e) {
            emit(const RegistrarAbastecimentoState.erro('Erro ao cadastrar abastecimento!'));
          }
        }));
  }
}
