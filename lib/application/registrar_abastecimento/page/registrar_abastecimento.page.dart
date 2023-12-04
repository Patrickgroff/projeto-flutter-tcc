import 'package:auto_route/auto_route.dart';
import 'package:common_widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gest_car/application/registrar_abastecimento/bloc/registrar_abastecimento_bloc.dart';
import 'package:gest_car/core/injection/injection.dart';
import 'package:gest_car/domain/abastecimento/entities/abastecimento.dart';
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
                child: BlocListener<RegistrarAbastecimentoBloc, RegistrarAbastecimentoState>(
                    listener: (context, state) => state.whenOrNull(
                          erro: (message) => Notifications.showSnackBarWithError(context, message: message),
                          successo: () => context.router.pop(true),
                        ),
                    child: ReactiveFormBuilder(
                        form: () => fb.group({
                              'data': FormControl<DateTime>(),
                              'odometro': FormControl<double>(),
                              'tipoCombustivel': FormControl<String>(),
                              'valor': FormControl<double>(validators: [Validators.required, Validators.min(1)]),
                              'litros': FormControl<double>(validators: [Validators.required, Validators.min(1)]),
                              'observacao': FormControl<String>(),
                            }),
                        builder: (context, form, _) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: CustomScrollView(
                              slivers: [
                                SliverToBoxAdapter(
                                  child: Column(
                                    children: [
                                      Spacing.v12,
                                      ReactiveDatePicker(
                                        formControlName: 'data',
                                        firstDate: DateTime(2000),
                                        lastDate: DateTime.now(),
                                        builder: (context, picker, child) => InkWell(
                                          onTap: picker.showPicker,
                                          child: IgnorePointer(
                                            child: ReactiveTextField(
                                              formControlName: 'data',
                                              valueAccessor: AppDateTimeValueAccessor(),
                                              decoration: InputDecoration(
                                                labelText: "Data",
                                                prefixIcon: const Icon(Icons.calendar_today),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Spacing.v12,
                                      ReactiveTextField(
                                        formControlName: 'odometro',
                                        decoration: const InputDecoration(labelText: 'Odômetro', prefixIcon: Icon(Icons.pin)),
                                        keyboardType: TextInputType.number,
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
                                        keyboardType: TextInputType.number,
                                        textInputAction: TextInputAction.next,
                                        validationMessages: {
                                          ValidationMessage.required: (error) => 'O valor é obrigatório!',
                                          ValidationMessage.min: (error) => 'valor inválido!',
                                        },
                                      ),
                                      Spacing.v12,
                                      ReactiveTextField(
                                        formControlName: 'litros',
                                        decoration: const InputDecoration(labelText: 'Litros', prefixIcon: Icon(Icons.oil_barrel)),
                                        keyboardType: TextInputType.number,
                                        textInputAction: TextInputAction.next,
                                        validationMessages: {
                                          ValidationMessage.required: (error) => 'Litros é obrigatório!',
                                          ValidationMessage.min: (error) => 'Litros inválido!',
                                        },
                                      ),
                                      Spacing.v12,
                                      ReactiveTextField(
                                        formControlName: 'observacao',
                                        decoration: const InputDecoration(labelText: 'Observação', prefixIcon: Icon(Icons.sort)),
                                        textInputAction: TextInputAction.next,
                                      ),
                                      Spacing.v12,
                                      CircularProgressStateWidget<RegistrarAbastecimentoBloc, RegistrarAbastecimentoState>(
                                        isLoadingState: (state) => state.maybeWhen(orElse: () => false, cadastrando: () => true),
                                        buildButton: (context, state) => AppButtonSize.medium(
                                          child: FilledButton(
                                            onPressed: () => form.valid
                                                ? context.read<RegistrarAbastecimentoBloc>().add(RegistrarAbastecimentoEvent.cadastrar(Abastecimento.fromJson(form.value)))
                                                : form.markAllAsTouched(),
                                            child: const Text('Salvar'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )))))));
  }
}
