import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gest_car/application/linha_do_tempo/bloc/linha_do_tempo_bloc.dart';
import 'package:gest_car/core/injection/injection.dart';
import 'package:gest_car/core/router/app_router.dart';

@RoutePage()
class LinhaDoTempoPage extends StatelessWidget {
  static const path = '/linha-do-tempo';
  const LinhaDoTempoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Linha Do Tempo')),
      body: BlocProvider(
        create: (_) => getIt<LinhaDoTempoBloc>(),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                  onPressed: () => context.router.push(RegistrarAbastecimentoRoute()),
                  child: const Text(
                    "Adicionar Abastecimento",
                  )),
              ElevatedButton(onPressed: () => context.router.push(RegistrarDespesaRoute()), child: const Text("Adicionar Despesa")),
              ElevatedButton(onPressed: () => context.router.push(RegistrarServicoRoute()), child: const Text("Adicionar Serviço")),
              ElevatedButton(onPressed: () => context.router.push(RegistrarReceitaRoute()), child: const Text("Adicionar Receita")),
              ElevatedButton(onPressed: () => context.router.push(VeiculosRegistradosRoute()), child: const Text("Veículos Cadastrados")),
              ElevatedButton(onPressed: () => context.router.push(EditarUsuarioRoute()), child: const Text("Editar Usuario")),
            ],
          ),
        ),
      ),
    );
  }
}
