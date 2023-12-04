import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gest_car/application/linha_do_tempo/bloc/linha_do_tempo_bloc.dart';
import 'package:gest_car/application/linha_do_tempo/widgets/usuario_info_drawer_header.widget.dart';
import 'package:gest_car/core/injection/injection.dart';
import 'package:gest_car/core/router/app_router.dart';
import 'package:gest_car/domain/linha_do_tempo/entities/tipo_linha_do_tempo.enum.dart';
import 'package:gest_car/domain/usuario/repositories/usuario.repository.i.dart';

class AppDrawerWidget extends StatelessWidget {
  const AppDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final linhaDoTempoBloc = context.read<LinhaDoTempoBloc>();
    return Drawer(
        child: SafeArea(
      top: false,
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const UsuarioInfoDrawerHeader(),
                ListTile(
                    title: const Text('Adicionar Abastecimento'),
                    iconColor: TipoLinhaDoTempo.abastecimento.color,
                    leading: Icon(TipoLinhaDoTempo.abastecimento.icon),
                    onTap: () {
                      Navigator.pop(context);
                      Future.delayed(const Duration(milliseconds: 230), () async {
                        final isRecarregar = await context.router.push<bool?>(const RegistrarAbastecimentoRoute());
                        if (isRecarregar == true) {
                          linhaDoTempoBloc.add(const LinhaDoTempoEvent.carregar());
                        }
                      });
                    }),
                ListTile(
                    title: const Text('Adicionar Despesa'),
                    iconColor: TipoLinhaDoTempo.despesa.color,
                    leading: Icon(TipoLinhaDoTempo.despesa.icon),
                    onTap: () {
                      Navigator.pop(context);
                      Future.delayed(const Duration(milliseconds: 230), () async {
                        final isRecarregar = await context.router.push<bool?>(const RegistrarDespesaRoute());
                        if (isRecarregar == true) {
                          linhaDoTempoBloc.add(const LinhaDoTempoEvent.carregar());
                        }
                      });
                    }),
                ListTile(
                    title: const Text('Adicionar Serviço'),
                    iconColor: TipoLinhaDoTempo.servico.color,
                    leading: Icon(TipoLinhaDoTempo.servico.icon),
                    onTap: () {
                      Navigator.pop(context);
                      Future.delayed(const Duration(milliseconds: 230), () async {
                        final isRecarregar = await context.router.push<bool?>(const RegistrarServicoRoute());
                        if (isRecarregar == true) {
                          linhaDoTempoBloc.add(const LinhaDoTempoEvent.carregar());
                        }
                      });
                    }),
                ListTile(
                    title: const Text('Adicionar Receita'),
                    iconColor: TipoLinhaDoTempo.receita.color,
                    leading: Icon(TipoLinhaDoTempo.receita.icon),
                    onTap: () {
                      Navigator.pop(context);
                      Future.delayed(const Duration(milliseconds: 230), () async {
                        final isRecarregar = await context.router.push<bool?>(const RegistrarReceitaRoute());
                        if (isRecarregar == true) {
                          linhaDoTempoBloc.add(const LinhaDoTempoEvent.carregar());
                        }
                      });
                    }),
                ListTile(
                    title: const Text('Veículos Cadastrados'),
                    leading: const Icon(Icons.directions_car_rounded),
                    onTap: () {
                      Navigator.pop(context);
                      Future.delayed(const Duration(milliseconds: 230), () async {
                        final isRecarregar = await context.router.push<bool?>(const VeiculosRegistradosRoute());
                        if (isRecarregar == true) {
                          linhaDoTempoBloc.add(const LinhaDoTempoEvent.carregar());
                        }
                      });
                    }),
              ],
            ),
          ),
          Container(
              alignment: FractionalOffset.bottomCenter,
              child: Column(
                children: [
                  const Divider(),
                  // ListTile(leading: Icon(Icons.account_circle_rounded), title: Text('Sua Conta')),
                  ListTile(
                      leading: const Icon(Icons.logout_rounded),
                      title: const Text('Sair'),
                      onTap: () {
                        Navigator.pop(context);
                        getIt<IUsuarioRepository>().logout();
                        context.router.pushAndPopUntil(const LoginRoute(), predicate: (route) => false);
                      }),
                ],
              ))
        ],
      ),
    ));
  }
}
