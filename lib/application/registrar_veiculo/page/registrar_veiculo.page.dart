import 'package:auto_route/auto_route.dart';
import 'package:common_widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gest_car/application/registrar_veiculo/bloc/registrar_veiculo_bloc.dart';
import 'package:gest_car/core/injection/injection.dart';
import 'package:gest_car/core/router/app_router.dart';
import 'package:reactive_forms/reactive_forms.dart';

@RoutePage()
class RegistrarVeiculoPage extends StatelessWidget {
  static const path = ':userId/registrar-veiculo';
  final int usuarioId;
  const RegistrarVeiculoPage({super.key, @PathParam('id') required this.usuarioId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Registrar Veículo')),
        body: KeyboardCloserContainer(
          child: BlocProvider(
              create: (_) => getIt<RegistrarVeiculoBloc>(),
              child: ReactiveFormBuilder(
                  form: () => fb.group({
                        'veiculo': FormControl<String>(validators: [Validators.required, Validators.minLength(2)]),
                        'marca': FormControl<String>(validators: [Validators.required, Validators.minLength(2)]),
                        'ano': FormControl<int>(validators: [Validators.required, Validators.minLength(4)]),
                        'placa': FormControl<String>(validators: [Validators.required, Validators.minLength(7)]),
                        'odometro': FormControl<double>(validators: [Validators.required, Validators.min(1)]),
                      }),
                  builder: (context, form, _) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: Layout.small),
                        child: CustomScrollView(
                          slivers: [
                            SliverToBoxAdapter(
                              child: Padding(
                                padding: const EdgeInsets.only(top: Layout.small),
                                child: Center(
                                  child: Material(
                                    elevation: Layout.xsmall,
                                    //shadowColor: theme.colorScheme.primary.withOpacity(0.54),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    borderRadius: BorderRadius.circular(50),
                                    borderOnForeground: false,
                                    child: Image.asset('assets/icons/gest-car-logo-ios.png', width: 100, height: 100),
                                  ),
                                ),
                              ),
                            ),
                            SliverToBoxAdapter(
                                child: Column(
                              children: [
                                Spacing.v12,
                                ReactiveTextField(
                                  formControlName: 'veiculo',
                                  decoration: InputDecoration(
                                    labelText: 'Nome do Veículo',
                                    prefixIcon: Icon(Icons.directions_car),
                                  ),
                                  textInputAction: TextInputAction.next,
                                ),
                                Spacing.v12,
                                ReactiveTextField(
                                  formControlName: 'marca',
                                  decoration: InputDecoration(
                                    labelText: 'Marca',
                                    prefixIcon: Icon(Icons.branding_watermark),
                                  ),
                                  textInputAction: TextInputAction.next,
                                ),
                                Spacing.v12,
                                ReactiveTextField(
                                  formControlName: 'ano',
                                  decoration: InputDecoration(
                                    labelText: 'Ano',
                                    prefixIcon: Icon(Icons.calendar_today),
                                  ),
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.next,
                                ),
                                Spacing.v12,
                                ReactiveTextField(
                                  formControlName: 'placa',
                                  decoration: InputDecoration(
                                    labelText: 'Placa',
                                    prefixIcon: Icon(Icons.no_crash),
                                  ),
                                  textInputAction: TextInputAction.next,
                                ),
                                Spacing.v12,
                                ReactiveTextField(
                                  formControlName: 'odometro',
                                  decoration: InputDecoration(labelText: 'Odômetro', prefixIcon: Icon(Icons.pin)),
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.next,
                                ),
                                Center(child: ElevatedButton(onPressed: () => context.router.push(LinhaDoTempoRoute()), child: Text("Concluir"))),
                              ],
                            )),
                          ],
                        ),
                      ))),
        ));
  }
}
