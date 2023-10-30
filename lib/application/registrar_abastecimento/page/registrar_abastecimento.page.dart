import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gest_car/application/registrar_abastecimento/bloc/registrar_abastecimento_bloc.dart';
import 'package:gest_car/core/injection/injection.dart';

@RoutePage()
class RegistrarAbastecimentoPage extends StatelessWidget {
  static const path = '/registrar-abastecimento';
  const RegistrarAbastecimentoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('RegistrarAbastecimento')),
        body: BlocProvider(
          create: (_) => getIt<RegistrarAbastecimentoBloc>(),
          child: Container(),
        ));
  }
}
