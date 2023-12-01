import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gest_car/domain/usuario/repositories/usuario.repository.i.dart';
import 'package:gest_car/domain/veiculo/entities/veiculo.dart';
import 'package:gest_car/domain/veiculo/repositories/veiculo.repository.i.dart';
import 'package:injectable/injectable.dart';

part 'registrar_veiculo_bloc.freezed.dart';
part 'registrar_veiculo_event.dart';
part 'registrar_veiculo_state.dart';

@injectable
class RegistrarVeiculoBloc extends Bloc<RegistrarVeiculoEvent, RegistrarVeiculoState> {
  // Inject repository
  final IVeiculoRepository _repository;
  final IUsuarioRepository _usuarioRepository;
  RegistrarVeiculoBloc(this._repository, this._usuarioRepository) : super(const _Initial()) {
    on<RegistrarVeiculoEvent>((event, emit) => event.when<FutureOr<void>>(cadastrar: (veiculo, usuarioId, veiculoId) async {
          emit(const RegistrarVeiculoState.cadastrando());

          try {
            if (veiculoId == null) {
              final resultado = await _repository.save(veiculo.copyWith(usuarioId: usuarioId));

              if (resultado == null || resultado.id == null) {
                return emit(const RegistrarVeiculoState.erro('Erro ao cadastrar veiculo!'));
              } else {
                _repository.salvarVeiculoSelecionado(resultado.id!);
                _usuarioRepository.saveLoggedInUsuario(usuarioId);
              }
            } else {
              final resultado = await _repository.updateVeiculo(veiculoId, veiculo);
              if (!resultado) return emit(const RegistrarVeiculoState.erro('Erro ao atualizar dados do veiculo!'));
            }
            emit(const RegistrarVeiculoState.successo());
          } catch (e) {
            emit(const RegistrarVeiculoState.erro('Erro ao cadastrar usuario!'));
          }
        }));
  }
}
