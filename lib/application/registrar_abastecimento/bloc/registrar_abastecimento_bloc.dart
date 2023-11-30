import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gest_car/domain/abastecimento/repositories/abastecimento.repository.i.dart';
import 'package:injectable/injectable.dart';

part 'registrar_abastecimento_bloc.freezed.dart';
part 'registrar_abastecimento_event.dart';
part 'registrar_abastecimento_state.dart';

@injectable
class RegistrarAbastecimentoBloc extends Bloc<RegistrarAbastecimentoEvent, RegistrarAbastecimentoState> {
  // Inject repository
  final IAbastecimentoRepository abastecimentoRepository;
  RegistrarAbastecimentoBloc(this.abastecimentoRepository) : super(const _Initial()) {
    on<RegistrarAbastecimentoEvent>((event, emit) {}
        // TODO: implement event handler
        );
  }
}
