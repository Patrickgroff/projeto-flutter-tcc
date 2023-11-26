part of 'linha_do_tempo_bloc.dart';

@freezed
class LinhaDoTempoState with _$LinhaDoTempoState {
  const factory LinhaDoTempoState.initial() = _Initial;
  const factory LinhaDoTempoState.carregando() = _Carregando;
  const factory LinhaDoTempoState.successo(List<LinhaDoTempo> items) = _Successo;
  const factory LinhaDoTempoState.vazio() = _Vazio;
  const factory LinhaDoTempoState.erro(String message) = _Erro;
}
