import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'linha_do_tempo_event.dart';
part 'linha_do_tempo_state.dart';
part 'linha_do_tempo_bloc.freezed.dart';

@injectable
class LinhaDoTempoBloc extends Bloc<LinhaDoTempoEvent, LinhaDoTempoState> {
  // Inject repository
  // final ILinhaDoTempoRepository linhaDoTempoRepository;
  LinhaDoTempoBloc(/* this.linhaDoTempoRepository */) : super(_Initial()) {
    on<LinhaDoTempoEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
