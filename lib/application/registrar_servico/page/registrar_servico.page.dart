import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gest_car/application/registrar_servico/bloc/registrar_servico_bloc.dart';
import 'package:gest_car/core/injection/injection.dart';

@RoutePage()
class RegistrarServicoPage extends StatelessWidget {
  static const path = '/registrar-servico';
  const RegistrarServicoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('RegistrarServico')),
        body: BlocProvider(
          create: (_) => getIt<RegistrarServicoBloc>(),
          child: Container(),
        ));
  }
}
