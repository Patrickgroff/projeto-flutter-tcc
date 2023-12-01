import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gest_car/domain/servico/entities/servico.dart';
import 'package:gest_car/domain/servico/repositories/servico.repository.i.dart';
import 'package:gest_car/domain/veiculo/repositories/veiculo.repository.i.dart';
import 'package:injectable/injectable.dart';

part 'registrar_servico_bloc.freezed.dart';
part 'registrar_servico_event.dart';
part 'registrar_servico_state.dart';

@injectable
class RegistrarServicoBloc extends Bloc<RegistrarServicoEvent, RegistrarServicoState> {
  // Inject repository
  final IServicoRepository _servicoRepository;
  final IVeiculoRepository _veiculoRepository;
  RegistrarServicoBloc(this._servicoRepository, this._veiculoRepository) : super(const _Initial()) {
    on<RegistrarServicoEvent>((event, emit) => event.when(cadastrar: (servico) async {
          emit(const RegistrarServicoState.cadastrando());

          try {
            final veiculo = await _veiculoRepository.veiculoSelecionado;
            if (veiculo != null) {
              final resultado = await _servicoRepository.save(servico.copyWith(veiculoId: veiculo.id));

              if (resultado == null || resultado.id == null) {
                return emit(const RegistrarServicoState.erro('Erro ao cadastrar servico!'));
              } else {
                emit(const RegistrarServicoState.successo());
              }
            } else {
              return emit(const RegistrarServicoState.erro('Veículo não selecionado!'));
            }
          } catch (e) {
            emit(const RegistrarServicoState.erro('Erro ao cadastrar servico!'));
          }
        }));
  }
}
