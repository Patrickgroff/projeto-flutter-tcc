import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gest_car/application/registrar_usuario/bloc/registrar_usuario_bloc.dart';
import 'package:gest_car/core/injection/injection.dart';
import 'package:gest_car/core/router/app_router.dart';

@RoutePage()
class RegistrarUsuarioPage extends StatelessWidget {
  static const path = '/registrar-usuario';
  const RegistrarUsuarioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Registrar Usuario')),
        body: BlocProvider(
            create: (_) => getIt<RegistrarUsuarioBloc>(),
            child: Center(child: ElevatedButton(onPressed: () => context.router.push(RegistrarVeiculoRoute()), child: Text("Adicionar Veículo")))));
  }
}
