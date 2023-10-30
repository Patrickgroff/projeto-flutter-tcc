import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gest_car/application/registrar_veiculo/bloc/registrar_veiculo_bloc.dart';
import 'package:gest_car/core/injection/injection.dart';
import 'package:gest_car/core/router/app_router.dart';

@RoutePage()
class RegistrarVeiculoPage extends StatelessWidget {
  static const path = '/registrar-veiculo';
  const RegistrarVeiculoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Registrar Veículo')),
        body: BlocProvider(
          create: (_) => getIt<RegistrarVeiculoBloc>(),
          child: Center(
            child: ElevatedButton(onPressed: () => context.router.push(LinhaDoTempoRoute()), child: Text("Linha do Tempo")),
          ),
        ));
  }
}
