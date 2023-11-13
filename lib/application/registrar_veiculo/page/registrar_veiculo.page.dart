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
            child: ListView(
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextField(
                            decoration: InputDecoration(
                          labelText: 'Veículo',
                        )),
                        TextField(
                            decoration: InputDecoration(
                          labelText: 'Apelido',
                        )),
                        TextField(
                            decoration: InputDecoration(
                          labelText: 'Marca',
                        )),
                        TextField(
                            decoration: InputDecoration(
                          labelText: 'Ano',
                        )),
                        TextField(
                            decoration: InputDecoration(
                          labelText: 'Placa',
                        )),
                        TextField(
                            decoration: InputDecoration(
                          labelText: 'Volume do Tanque',
                        )),
                        TextField(
                            decoration: InputDecoration(
                          labelText: 'Odômetro',
                        )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(onPressed: () => context.router.push(LinhaDoTempoRoute()), child: Text("Concluir")),
                          ],
                        ),
                      ],
                    )),
              ],
            )));
  }
}
