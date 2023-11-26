import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gest_car/domain/linha_do_tempo/entities/linha_do_tempo.dart';
import 'package:gest_car/domain/linha_do_tempo/entities/tipo_linha_do_tempo.enum.dart';
import 'package:gest_car/domain/linha_do_tempo/repositories/linha_do_tempo.repository.i.dart';
import 'package:injectable/injectable.dart';

part 'linha_do_tempo_bloc.freezed.dart';
part 'linha_do_tempo_event.dart';
part 'linha_do_tempo_state.dart';

@injectable
class LinhaDoTempoBloc extends Bloc<LinhaDoTempoEvent, LinhaDoTempoState> {
  final ILinhaDoTempoRepository _linhaDoTempoRepository;
  LinhaDoTempoBloc(this._linhaDoTempoRepository) : super(const _Initial()) {
    on<LinhaDoTempoEvent>((event, emit) => event.when<FutureOr<void>>(
          garregar: () async {
            emit(const LinhaDoTempoState.carregando());
            try {
              // final items = await _linhaDoTempoRepository.get();
              final items = [
                LinhaDoTempo(
                  id: 1,
                  tipo: TipoLinhaDoTempo.abastecimento,
                  titulo: 'Abastecimento caminhão',
                  observacao: 'teste',
                  odometro: 500,
                  valor: 1000,
                  date: DateTime.now().add(const Duration(days: -4)),
                ),
                LinhaDoTempo(
                  id: 2,
                  tipo: TipoLinhaDoTempo.despesa,
                  titulo: 'Refeição',
                  observacao: 'teste',
                  odometro: 900,
                  valor: 4200,
                  date: DateTime.now().add(const Duration(days: -1)),
                ),
                LinhaDoTempo(
                  id: 3,
                  tipo: TipoLinhaDoTempo.receita,
                  titulo: 'Recebimento do frete do mês',
                  observacao: 'teste',
                  odometro: 1500,
                  valor: 80000,
                  date: DateTime.now().add(const Duration(hours: -6)),
                ),
                LinhaDoTempo(
                  id: 4,
                  tipo: TipoLinhaDoTempo.servico,
                  titulo: 'Manutenção do freio do caminhão',
                  observacao: 'teste',
                  odometro: 2500,
                  valor: 600,
                  date: DateTime.now(),
                ),
              ];
              if (items.isEmpty) {
                emit(const LinhaDoTempoState.vazio());
              } else {
                emit(LinhaDoTempoState.successo(items));
              }
            } catch (e) {
              emit(const LinhaDoTempoState.erro('Erro ao buscar itens da linha do tempo!'));
            }
          },
          irParaEvento: (item) {},
        ));
  }
}
