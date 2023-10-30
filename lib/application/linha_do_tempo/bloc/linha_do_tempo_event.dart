part of 'linha_do_tempo_bloc.dart';

@freezed
class LinhaDoTempoEvent with _$LinhaDoTempoEvent {
  const factory LinhaDoTempoEvent.started() = _Started;
}