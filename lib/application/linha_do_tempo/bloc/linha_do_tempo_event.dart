part of 'linha_do_tempo_bloc.dart';

@freezed
class LinhaDoTempoEvent with _$LinhaDoTempoEvent {
  const factory LinhaDoTempoEvent.iniciarFiltroListener() = _IniciarFiltroListener;
  const factory LinhaDoTempoEvent.carregar() = _Carregar;
  const factory LinhaDoTempoEvent.irParaEvento(LinhaDoTempo item) = _IrParaEvento;
}