import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:common_widgets/common_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gest_car/application/login/bloc/login_bloc.dart';
import 'package:gest_car/core/injection/injection.dart';
import 'package:gest_car/core/router/app_router.dart';
import 'package:reactive_forms/reactive_forms.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  static const path = '/login';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final background = theme.extension<GradientBackgroundTheme>();
    return Scaffold(
      body: KeyboardCloserContainer(
        child: BlocProvider(
          create: (_) => getIt<LoginBloc>(),
          child: BlocListener<LoginBloc, LoginState>(
            listener: (context, state) => state.whenOrNull<FutureOr<void>>(
              error: (message) => Notifications.showSnackBarWithError(context, message: message),
              success: () {
                //TODO Ir para a tela de home
              },
            ),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(children: [
                    Spacing.v64,
                    Material(
                      elevation: Layout.xsmall,
                      shadowColor: theme.colorScheme.primary.withOpacity(0.54),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      borderRadius: BorderRadius.circular(50),
                      borderOnForeground: false,
                      child: Image.asset('assets/icons/gest-car-logo-ios.png', width: 100, height: 100),
                    ),
                    Spacing.v24,
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: Layout.msmall, horizontal: Layout.medium),
                        decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            gradient: background?.gradient,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(Layout.medium),
                              topRight: Radius.circular(Layout.medium),
                            )),
                        child: Text('Login', style: theme.textTheme.headlineLarge?.copyWith(color: theme.colorScheme.onPrimary))),
                    Spacing.v48,
                  ]),
                ),
                SliverToBoxAdapter(
                  child: ReactiveFormBuilder(
                    form: () => fb.group({
                      'telefone': FormControl<String>(validators: [Validators.required, Validators.minLength(16)]),
                      'senha': FormControl<String>(validators: [Validators.required, Validators.minLength(3)]),
                    }),
                    builder: (context, form, _) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Informe seus dados para entrar!', style: theme.textTheme.bodyMedium),
                          Spacing.v12,
                          ReactiveTextField(
                            formControlName: 'telefone',
                            decoration: const InputDecoration(labelText: 'Seu telefone', prefixIcon: Icon(Icons.phone_rounded), hintText: '(XX) 9 XXXX-XXXX'),
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
                            },
                          ),
                          Spacing.v12,
                          AppReactivePasswordField(
                            formControlName: 'senha',
                            decoration: const InputDecoration(labelText: 'Senha', prefixIcon: Icon(Icons.lock_rounded)),
                            textInputAction: TextInputAction.done,
                            validationMessages: {
                              ValidationMessage.required: (error) => 'A senha é requerido!',
                              ValidationMessage.minLength: (error) => 'senha muito curta!',
                            },
                            onSubmitted: (control) =>
                                form.valid ? context.read<LoginBloc>().add(LoginEvent.login(form.findControl('telefone')?.value, form.findControl('senha')?.value)) : form.markAllAsTouched(),
                          ),
                          Spacing.v24,
                          CircularProgressStateWidget<LoginBloc, LoginState>(
                            isLoadingState: (state) => state.maybeWhen(orElse: () => false, checkingCredentials: () => true),
                            buildButton: (context, state) => AppButtonSize.medium(
                              child: FilledButton(
                                onPressed: () => form.valid
                                    ? context.read<LoginBloc>().add(LoginEvent.login(form.findControl('telefone')?.value, form.findControl('senha')?.value))
                                    : form.markAllAsTouched(),
                                child: const Text('Entrar'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverFillRemaining(
                    hasScrollBody: false,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: Layout.msmall),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text.rich(
                          textAlign: TextAlign.center,
                          TextSpan(text: 'Não tem uma conta? ', children: [
                            TextSpan(
                              text: 'Cadastre-se', style: TextStyle(color: theme.colorScheme.primary, fontWeight: FontWeight.bold),

                              ///TODO Ir para tela de cadastro,
                              recognizer: TapGestureRecognizer()..onTap = () => context.router.push(const RegistrarUsuarioRoute()),
                            )
                          ]),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
