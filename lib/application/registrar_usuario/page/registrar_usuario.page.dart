import 'package:auto_route/auto_route.dart';
import 'package:common_widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gest_car/application/registrar_usuario/bloc/registrar_usuario_bloc.dart';
import 'package:gest_car/core/injection/injection.dart';
import 'package:gest_car/core/router/app_router.dart';
import 'package:gest_car/domain/usuario/entities/usuario.dart';
import 'package:gest_car/domain/usuario/repositories/usuario.repository.i.dart';
import 'package:reactive_forms/reactive_forms.dart';

@RoutePage()
class RegistrarUsuarioPage extends StatelessWidget {
  static const path = '/registrar-usuario';
  const RegistrarUsuarioPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(title: const Text('Registrar Usuario')),
        body: KeyboardCloserContainer(
          child: BlocProvider(
              create: (_) => getIt<RegistrarUsuarioBloc>(),
              child: BlocListener<RegistrarUsuarioBloc, RegistrarUsuarioState>(
                listener: (context, state) => state.whenOrNull(
                  erro: (message) => Notifications.showSnackBarWithError(context, message: message),
                  successo: (usuarioId) => context.router.push(RegistrarVeiculoRoute(usuarioId: usuarioId)),
                ),
                child: ReactiveFormBuilder(
                  form: () => fb.group({
                    'nome': FormControl<String>(validators: [Validators.required, Validators.minLength(3)]),
                    'telefone': FormControl<String>(
                      validators: [Validators.required, Validators.minLength(16)],
                      asyncValidators: [const TelefoneAsyncValidator()],
                    ),
                    'senha': FormControl<String>(validators: [Validators.required, Validators.minLength(3)]),
                    'confirmacaoSenha': FormControl<String>(validators: []),
                  }, [
                    Validators.mustMatch('senha', 'confirmacaoSenha'),
                  ]),
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
                                shadowColor: theme.colorScheme.primary.withOpacity(0.54),
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
                              Spacing.v36,
                              ReactiveTextField(
                                formControlName: 'nome',
                                decoration: const InputDecoration(labelText: 'Nome', prefixIcon: Icon(Icons.text_fields_rounded), hintText: 'ex. João'),
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(300),
                                  FilteringTextInputFormatter.singleLineFormatter,
                                ],
                                keyboardType: TextInputType.name,
                                textCapitalization: TextCapitalization.words,
                                textInputAction: TextInputAction.next,
                                validationMessages: {
                                  ValidationMessage.required: (error) => 'O seu nome é obrigatório!',
                                  ValidationMessage.minLength: (error) => 'Nome está muito curto!',
                                },
                              ),
                              Spacing.v12,
                              ReactiveTextField(
                                formControlName: 'telefone',
                                decoration: InputDecoration(
                                  labelText: 'Seu telefone',
                                  prefixIcon: const Icon(Icons.phone_rounded),
                                  hintText: '(XX) 9 XXXX-XXXX',
                                  suffixIconConstraints: const BoxConstraints.tightFor(height: 28, width: 28 + 12),
                                  suffixIcon: ReactiveStatusListenableBuilder(
                                    // listen status changes of cpf field
                                    formControlName: 'telefone',
                                    builder: (context, control, child) => control.pending
                                        ? const Padding(padding: EdgeInsets.only(right: 12), child: CircularProgressIndicator(strokeWidth: 2)) // progress indicator if status is 'pending'
                                        : const SizedBox(width: 0),
                                  ),
                                ),
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(16),
                                  FilteringTextInputFormatter.digitsOnly,
                                  FilteringTextInputFormatter.singleLineFormatter,
                                  AppBRNumberTextInputFormatter()
                                ],
                                keyboardType: TextInputType.phone,
                                textInputAction: TextInputAction.next,
                                validationMessages: {
                                  ValidationMessage.required: (error) => 'O seu telefone é requerido!',
                                  ValidationMessage.minLength: (error) => 'O seu telefone está invalido!',
                                  TelefoneAsyncValidator.errorKey: (error) => '$error',
                                },
                              ),
                              Spacing.v12,
                              AppReactivePasswordField(
                                formControlName: 'senha',
                                decoration: const InputDecoration(labelText: 'Senha', prefixIcon: Icon(Icons.lock_rounded), hintText: '****'),
                                textInputAction: TextInputAction.next,
                                validationMessages: {
                                  ValidationMessage.required: (error) => 'A senha é requerido!',
                                  ValidationMessage.minLength: (error) => 'senha muito curta!',
                                },
                              ),
                              Spacing.v12,
                              AppReactivePasswordField(
                                formControlName: 'confirmacaoSenha',
                                decoration: const InputDecoration(labelText: 'Confirmação de Senha', prefixIcon: Icon(Icons.lock_rounded), hintText: '****'),
                                textInputAction: TextInputAction.next,
                                validationMessages: {
                                  ValidationMessage.mustMatch: (error) => 'Confirmação de senha difereten da senha!',
                                },
                              ),
                              Spacing.v16,
                              CircularProgressStateWidget<RegistrarUsuarioBloc, RegistrarUsuarioState>(
                                isLoadingState: (state) => state.maybeWhen(orElse: () => false, cadastrando: () => true),
                                buildButton: (context, state) => AppButtonSize.medium(
                                  child: FilledButton(
                                    onPressed: () =>
                                        form.valid ? context.read<RegistrarUsuarioBloc>().add(RegistrarUsuarioEvent.cadastrar(Usuario.fromJson(form.value))) : form.markAllAsTouched(),
                                    child: const Text('Adicionar Veiculo'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )),
        ));
  }
}

class TelefoneAsyncValidator extends AsyncValidator<dynamic> {
  static const errorKey = 'TelefoneAsyncValidator';

  const TelefoneAsyncValidator();

  @override
  Future<Map<String, dynamic>?> validate(AbstractControl control) async {
    final repository = getIt<IUsuarioRepository>();
    final telefoneExiste = await repository.findPhoneNumber(control.value.toString());
    if (telefoneExiste == true) {
      control.markAllAsTouched();
      return {TelefoneAsyncValidator.errorKey: 'Telefone já cadastrado!'};
    } else {
      return null;
    }
  }
}
