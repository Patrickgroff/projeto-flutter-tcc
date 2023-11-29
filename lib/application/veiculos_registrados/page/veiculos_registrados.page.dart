import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gest_car/application/veiculos_registrados/bloc/veiculos_registrados_bloc.dart';
import 'package:gest_car/core/injection/injection.dart';

@RoutePage()
class VeiculosRegistradosPage extends StatelessWidget {
  static const path = '/veiculos-registrados';
  const VeiculosRegistradosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Veículos ')),
        body: BlocProvider(
          create: (_) => getIt<VeiculosRegistradosBloc>(),
          child: Container(),
        ));
  }
}
