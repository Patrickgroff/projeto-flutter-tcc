import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gest_car/application/linha_do_tempo/bloc/linha_do_tempo_bloc.dart';
import 'package:gest_car/core/injection/injection.dart';
import 'package:gest_car/core/router/app_router.dart';

@RoutePage()
class LinhaDoTempoPage extends StatelessWidget {
  static const path = '/linha-do-tempo';
  const LinhaDoTempoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Linha Do Tempo')),
        body: BlocProvider(
          create: (_) => getIt<LinhaDoTempoBloc>(),
          child: Container(
            child: Center(
              child: ElevatedButton(onPressed: () => context.router.push(RegistrarAbastecimentoRoute()), child: Text("Adicionar Abastecimento")),
            ),
          ),
        ));
  }
}
