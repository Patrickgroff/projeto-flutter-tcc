part of 'linha_do_tempo_bloc.dart';

@freezed
class LinhaDoTempoEvent with _$LinhaDoTempoEvent {
  const factory LinhaDoTempoEvent.garregar() = _Started;
  const factory LinhaDoTempoEvent.irParaEvento(LinhaDoTempo item) = _IrParaEvento;
}