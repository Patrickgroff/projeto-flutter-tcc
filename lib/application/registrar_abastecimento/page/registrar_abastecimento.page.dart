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
        appBar: AppBar(title: const Text('Registrar Abastecimento')),
        body: BlocProvider(
            create: (_) => getIt<RegistrarAbastecimentoBloc>(),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Data',
                        ),
                      ),
                      TextField(
                        keyboardType: TextInputType.numberWithOptions(decimal: true),
                        decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Odômetro'),
                      ),
                      TextField(
                        decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Tipo de Combustível'),
                      ),
                      TextField(
                        keyboardType: TextInputType.numberWithOptions(decimal: true),
                        decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Valor'),
                      ),
                      TextField(
                        keyboardType: TextInputType.numberWithOptions(decimal: true),
                        decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Litros'),
                      ),
                      TextField(
                        decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Observação'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () => {},
                            child: Text('Concluir'),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )));
  }
}
