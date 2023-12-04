import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gest_car/domain/veiculo/entities/veiculo.dart';
import 'package:gest_car/domain/veiculo/repositories/veiculo.repository.i.dart';
import 'package:injectable/injectable.dart';

part 'veiculos_registrados_bloc.freezed.dart';
part 'veiculos_registrados_event.dart';
part 'veiculos_registrados_state.dart';

@injectable
class VeiculosRegistradosBloc extends Bloc<VeiculosRegistradosEvent, VeiculosRegistradosState> {
  // Inject repository
  final IVeiculoRepository _repository;
  VeiculosRegistradosBloc(this._repository) : super(const _Initial()) {
    on<VeiculosRegistradosEvent>((event, emit) => event.when<FutureOr<void>>(buscarVeiculos: () async {
          emit(const VeiculosRegistradosState.buscando());
          try {
            final veiculoSelecionado = await _repository.veiculoSelecionado;
            final veiculos = await _repository.get();
            emit(veiculos.isEmpty ? const VeiculosRegistradosState.vazio() : VeiculosRegistradosState.encontrados(veiculos, veiculoSelecionado?.id));
          } catch (e) {
            debugPrint('$e');
            emit(const VeiculosRegistradosState.erro('Erro ao buscar veiculos'));
          }
        }, selecionarVeiculo: (id) async {
          if (id != null) {
            emit(VeiculosRegistradosState.selecionando(id));
            await Future.delayed(const Duration(seconds: 2));
            await _repository.salvarVeiculoSelecionado(id);
            emit(const VeiculosRegistradosState.selecionadoSucesso());
          }
        }));
  }
}
