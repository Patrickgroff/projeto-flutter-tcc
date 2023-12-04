import 'package:auto_route/auto_route.dart';
import 'package:common_widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gest_car/application/registrar_veiculo/bloc/registrar_veiculo_bloc.dart';
import 'package:gest_car/core/injection/injection.dart';
import 'package:gest_car/core/router/app_router.dart';
import 'package:gest_car/domain/veiculo/entities/veiculo.dart';
import 'package:reactive_forms/reactive_forms.dart';

@RoutePage()
class RegistrarVeiculoPage extends StatelessWidget {
  static const path = ':userId/registrar-veiculo';
  static const pathUpdate = ':userId/registrar-veiculo/:veiculoId';
  final int usuarioId;
  final int? veiculoId;
  const RegistrarVeiculoPage({super.key, @PathParam('id') required this.usuarioId, @PathParam('veiculoId') this.veiculoId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Registrar Veículo')),
        body: KeyboardCloserContainer(
          child: BlocProvider(
              create: (_) => getIt<RegistrarVeiculoBloc>(),
              child: BlocListener<RegistrarVeiculoBloc, RegistrarVeiculoState>(
                listener: (context, state) => state.whenOrNull(
                  successo: () => context.router.push(const LinhaDoTempoRoute()),
                  erro: (message) => Notifications.showSnackBarWithError(context, message: message),
                ),
                child: ReactiveFormBuilder(
                    form: () => fb.group({
                          'veiculo': FormControl<String>(validators: [Validators.required, Validators.minLength(2)]),
                          'marca': FormControl<String>(validators: [Validators.required, Validators.minLength(2)]),
                          'ano': FormControl<int>(validators: [Validators.required, Validators.min(1910)]),
                          'placa': FormControl<String>(validators: [Validators.required, Validators.minLength(7)]),
                          'odometro': FormControl<double>(validators: [Validators.required, Validators.min(0)]),
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
                                    decoration: const InputDecoration(labelText: 'Nome do Veículo', prefixIcon: Icon(Icons.directions_car), hintText: 'ex. Meu fiat'),
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(150),
                                      FilteringTextInputFormatter.singleLineFormatter,
                                    ],
                                    keyboardType: TextInputType.name,
                                    textCapitalization: TextCapitalization.words,
                                    textInputAction: TextInputAction.next,
                                    validationMessages: {
                                      ValidationMessage.required: (error) => 'O nome do veículo é obrigatório!',
                                      ValidationMessage.minLength: (error) => 'Nome do veículo está muito curto!',
                                    },
                                  ),
                                  Spacing.v12,
                                  ReactiveTextField(
                                    formControlName: 'marca',
                                    decoration: const InputDecoration(labelText: 'Marca', prefixIcon: Icon(Icons.branding_watermark), hintText: 'Fiat'),
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(100),
                                      FilteringTextInputFormatter.singleLineFormatter,
                                    ],
                                    keyboardType: TextInputType.name,
                                    textCapitalization: TextCapitalization.words,
                                    textInputAction: TextInputAction.next,
                                    validationMessages: {
                                      ValidationMessage.required: (error) => 'A marca é obrigatória!',
                                      ValidationMessage.minLength: (error) => 'Nome da marca está muito curta!',
                                    },
                                  ),
                                  Spacing.v12,
                                  ReactiveTextField(
                                    formControlName: 'ano',
                                    decoration: const InputDecoration(labelText: 'Ano', prefixIcon: Icon(Icons.calendar_today), hintText: '1900'),
                                    onTap: (_) => _openDialog(context, form, 'ano'),
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(4),
                                      FilteringTextInputFormatter.singleLineFormatter,
                                    ],
                                    keyboardType: TextInputType.number,
                                    textInputAction: TextInputAction.next,
                                    validationMessages: {
                                      ValidationMessage.required: (error) => 'O Ano é obrigatório!',
                                      ValidationMessage.min: (error) => 'Ano inválido!',
                                    },
                                  ),
                                  Spacing.v12,
                                  ReactiveTextField(
                                    formControlName: 'placa',
                                    decoration: const InputDecoration(labelText: 'Placa', prefixIcon: Icon(Icons.no_crash), hintText: 'XXX-0X00'),
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(8),
                                      FilteringTextInputFormatter.singleLineFormatter,
                                      AppBRPlacaVeiculoTextInputFormatter(),
                                    ],
                                    keyboardType: TextInputType.text,
                                    textInputAction: TextInputAction.next,
                                    textCapitalization: TextCapitalization.characters,
                                    validationMessages: {
                                      ValidationMessage.required: (error) => 'A placa é obrigatória!',
                                      ValidationMessage.minLength: (error) => 'Placa inválido!',
                                    },
                                  ),
                                  Spacing.v12,
                                  ReactiveTextField(
                                    formControlName: 'odometro',
                                    textDirection: TextDirection.rtl,
                                    decoration: const InputDecoration(labelText: 'Odômetro', prefixIcon: Icon(Icons.pin), suffixText: 'KM'),
                                    keyboardType: TextInputType.number,
                                    textInputAction: TextInputAction.next,
                                    validationMessages: {
                                      ValidationMessage.required: (error) => 'O Odômetro é obrigatório!',
                                      ValidationMessage.min: (error) => 'Odômetro inválido!',
                                    },
                                  ),
                                  Spacing.v16,
                                  CircularProgressStateWidget<RegistrarVeiculoBloc, RegistrarVeiculoState>(
                                    isLoadingState: (state) => state.maybeWhen(orElse: () => false, cadastrando: () => true),
                                    buildButton: (context, state) => AppButtonSize.medium(
                                      child: FilledButton(
                                        onPressed: () => form.valid
                                            ? context.read<RegistrarVeiculoBloc>().add(RegistrarVeiculoEvent.cadastrar(Veiculo.fromJson(form.value), usuarioId, veiculoId))
                                            : form.markAllAsTouched(),
                                        child: const Text('Finalizar Cadastro'),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                            ],
                          ),
                        )),
              )),
        ));
  }

  void _openDialog(BuildContext context, FormGroup form, String formControlName) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Selecionar Ano"),
          content: SizedBox.square(
            dimension: 300,
            child: YearPicker(
              firstDate: DateTime(1910),
              lastDate: DateTime(DateTime.now().year),
              selectedDate: DateTime(form.control(formControlName).value ?? DateTime.now().year),
              onChanged: (DateTime dateTime) {
                Navigator.pop(context);
                form.control(formControlName).patchValue(dateTime.year);
              },
            ),
          ),
        );
      },
    );
  }
}
