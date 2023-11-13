import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gest_car/application/editar_usuario/bloc/editar_usuario_bloc.dart';
import 'package:gest_car/core/injection/injection.dart';

@RoutePage()
class EditarUsuarioPage extends StatelessWidget {
  static const path = '/editar-usuario';
  const EditarUsuarioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Editar Usuario')),
        body: BlocProvider(
          create: (_) => getIt<EditarUsuarioBloc>(),
          child: Container(),
        ));
  }
}
