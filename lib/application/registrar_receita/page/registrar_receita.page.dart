import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gest_car/application/registrar_receita/bloc/registrar_receita_bloc.dart';
import 'package:gest_car/core/injection/injection.dart';

@RoutePage()
class RegistrarReceitaPage extends StatelessWidget {
  static const path = '/registrar-receita';
  const RegistrarReceitaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Registrar Receita')),
        body: BlocProvider(
          create: (_) => getIt<RegistrarReceitaBloc>(),
          child: Container(),
        ));
  }
}
