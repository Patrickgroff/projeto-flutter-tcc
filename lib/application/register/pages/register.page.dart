import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gest_car/application/register/bloc/register_bloc.dart';
import 'package:gest_car/core/injection/injection.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  static const path = '/register';
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      color: theme.scaffoldBackgroundColor,
      child: Scaffold(
          appBar: AppBar(title: const Text('Cadastrar')),
          body: BlocProvider(
            create: (_) => getIt<RegisterBloc>(),
            child: Container(),
          )),
    );
  }
}
