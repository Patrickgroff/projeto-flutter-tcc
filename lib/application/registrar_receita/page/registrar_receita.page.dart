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
                        decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Tipo de Receita'),
                      ),
                      TextField(
                        keyboardType: TextInputType.numberWithOptions(decimal: true),
                        decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Valor'),
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
