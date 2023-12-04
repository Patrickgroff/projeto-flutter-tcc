import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gest_car/domain/linha_do_tempo/entities/linha_do_tempo.dart';
import 'package:gest_car/domain/linha_do_tempo/entities/tipo_linha_do_tempo.enum.dart';
import 'package:gest_car/domain/linha_do_tempo/repositories/linha_do_tempo.repository.i.dart';
import 'package:gest_car/domain/veiculo/repositories/veiculo.repository.i.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'linha_do_tempo_bloc.freezed.dart';
part 'linha_do_tempo_event.dart';
part 'linha_do_tempo_state.dart';

@injectable
class LinhaDoTempoBloc extends Bloc<LinhaDoTempoEvent, LinhaDoTempoState> {
  final ILinhaDoTempoRepository _linhaDoTempoRepository;
  final IVeiculoRepository _veiculoRepository;
  final form = fb.group({
    TipoLinhaDoTempo.abastecimento.name: true,
    TipoLinhaDoTempo.despesa.name: true,
    TipoLinhaDoTempo.receita.name: true,
    TipoLinhaDoTempo.servico.name: true,
  });
  LinhaDoTempoBloc(this._linhaDoTempoRepository, this._veiculoRepository) : super(const _Initial()) {
    on<LinhaDoTempoEvent>((event, emit) => event.when<FutureOr<void>>(
          iniciarFiltroListener: () => emit.onEach(form.valueChanges, onData: (_) {
            add(const LinhaDoTempoEvent.carregar());
          }),
          carregar: () async {
            emit(const LinhaDoTempoState.carregando());
            try {
              final veiculoSelecionado = await _veiculoRepository.veiculoSelecionado;
              bool ignorarAbastecimento = form.control(TipoLinhaDoTempo.abastecimento.name).value != true;
              bool ignorarDespesa = form.control(TipoLinhaDoTempo.despesa.name).value != true;
              bool ignorarReceita = form.control(TipoLinhaDoTempo.receita.name).value != true;
              bool ignorarServico = form.control(TipoLinhaDoTempo.servico.name).value != true;
              final List<LinhaDoTempo> items = veiculoSelecionado == null
                  ? []
                  : await _linhaDoTempoRepository.getByVeiculoId(veiculoSelecionado.id!, ignorarAbastecimento, ignorarDespesa, ignorarReceita, ignorarServico);

              if (items.isEmpty) {
                emit(const LinhaDoTempoState.vazio());
              } else {
                emit(LinhaDoTempoState.successo(items));
              }
            } catch (e) {
              emit(const LinhaDoTempoState.erro('Erro ao buscar itens da linha do tempo!'));
              rethrow;
            }
          },
          irParaEvento: (item) {},
        ));
  }
}
