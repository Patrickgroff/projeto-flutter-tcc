import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gest_car/application/registrar_despesa/bloc/registrar_despesa_bloc.dart';
import 'package:gest_car/core/injection/injection.dart';

@RoutePage()
class RegistrarDespesaPage extends StatelessWidget {
  static const path = '/registrar-despesa';
  const RegistrarDespesaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Registrar Despesa')),
        body: BlocProvider(
          create: (_) => getIt<RegistrarDespesaBloc>(),
          child: Container(),
        ));
  }
}
