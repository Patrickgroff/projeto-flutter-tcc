import 'package:auto_route/auto_route.dart';
import 'package:common_widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gest_car/application/registrar_abastecimento/bloc/registrar_abastecimento_bloc.dart';
import 'package:gest_car/core/injection/injection.dart';
import 'package:reactive_forms/reactive_forms.dart';

@RoutePage()
class RegistrarAbastecimentoPage extends StatelessWidget {
  static const path = '/registrar-abastecimento';
  const RegistrarAbastecimentoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Registrar Abastecimento')),
        body: KeyboardCloserContainer(
            child: BlocProvider(
                create: (_) => getIt<RegistrarAbastecimentoBloc>(),
                child: ReactiveFormBuilder(
                    form: () => fb.group({
                          'data': FormControl<String>(validators: [Validators.required, Validators.minLength(10)]),
                          'odometro': FormControl<String>(validators: [Validators.required, Validators.minLength(10)]),
                          'tipoCombustivel': FormControl<String>(validators: [Validators.required, Validators.minLength(10)]),
                          'valor': FormControl<String>(validators: [Validators.required, Validators.minLength(10)]),
                          'litros': FormControl<String>(validators: [Validators.required, Validators.minLength(10)]),
                          'observacao': FormControl<String>(validators: [Validators.required, Validators.minLength(10)]),
                        }),
                    builder: (context, form, _) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: CustomScrollView(
                          slivers: [
                            SliverToBoxAdapter(
                              child: Column(
                                children: [
                                  Spacing.v12,
                                  ReactiveTextField(
                                    formControlName: 'data',
                                    decoration: const InputDecoration(
                                      labelText: 'Data',
                                      prefixIcon: Icon(Icons.calendar_today),
                                    ),
                                    textInputAction: TextInputAction.next,
                                  ),
                                  Spacing.v12,
                                  ReactiveTextField(
                                    formControlName: 'odometro',
                                    decoration: const InputDecoration(labelText: 'Odômetro', prefixIcon: Icon(Icons.pin)),
                                    textInputAction: TextInputAction.next,
                                  ),
                                  Spacing.v12,
                                  ReactiveTextField(
                                    formControlName: 'tipoCombustivel',
                                    decoration: const InputDecoration(labelText: 'Tipo de Combustível', prefixIcon: Icon(Icons.local_gas_station)),
                                    textInputAction: TextInputAction.next,
                                  ),
                                  Spacing.v12,
                                  ReactiveTextField(
                                    formControlName: 'valor',
                                    decoration: const InputDecoration(labelText: 'Valor', prefixIcon: Icon(Icons.paid)),
                                    textInputAction: TextInputAction.next,
                                  ),
                                  Spacing.v12,
                                  ReactiveTextField(
                                    formControlName: 'litros',
                                    decoration: const InputDecoration(labelText: 'Litros', prefixIcon: Icon(Icons.oil_barrel)),
                                    textInputAction: TextInputAction.next,
                                  ),
                                  Spacing.v12,
                                  ReactiveTextField(
                                    formControlName: 'observacao',
                                    decoration: const InputDecoration(labelText: 'Observação', prefixIcon: Icon(Icons.sort)),
                                    textInputAction: TextInputAction.next,
                                  ),
                                  Spacing.v12,
                                  Center(
                                      child: ElevatedButton(
                                    onPressed: () => {},
                                    child: const Text('SALVAR'),
                                  ))
                                ],
                              ),
                            ),
                          ],
                        ))))));
  }
}
