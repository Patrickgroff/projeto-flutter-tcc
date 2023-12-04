import 'package:auto_route/auto_route.dart';
import 'package:common_widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gest_car/application/veiculos_registrados/bloc/veiculos_registrados_bloc.dart';
import 'package:gest_car/core/injection/injection.dart';

@RoutePage()
class VeiculosRegistradosPage extends StatelessWidget {
  static const path = '/veiculos-registrados';
  const VeiculosRegistradosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (_) => getIt<VeiculosRegistradosBloc>()..add(const VeiculosRegistradosEvent.buscarVeiculos()),
      child: BlocListener<VeiculosRegistradosBloc, VeiculosRegistradosState>(
        listener: (context, state) => state.whenOrNull(
          selecionadoSucesso: () => context.router.pop(true),
        ),
        child: CustomScrollView(slivers: [
          const SliverAppBar(title: Text('Veículos')),
          BlocBuilder<VeiculosRegistradosBloc, VeiculosRegistradosState>(
            buildWhen: (p, c) => c.maybeWhen(orElse: () => true, selecionadoSucesso: () => false, selecionando: (_) => false),
            builder: (context, state) => state.maybeWhen(
                orElse: () => SliverList.separated(
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Align(alignment: Alignment.centerLeft, child: Skeleton.mediumLabel(context)),
                          subtitle: Container(alignment: Alignment.centerLeft, padding: const EdgeInsets.only(top: Layout.xxsmall), child: Skeleton.smallLabel(context)),
                          leading: Skeleton.circle(),
                          trailing: Skeleton.smallCircle(),
                        );
                      },
                      separatorBuilder: (context, index) => const Divider(indent: 72),
                      itemCount: 5,
                    ),
                erro: (message) => SliverFillRemaining(
                      child: Center(
                        child: ErrorContainerWidget(
                          message: Column(
                            children: [
                              Icon(Icons.warning_rounded, size: Layout.xlarge),
                              Spacing.v12,
                              Text(message),
                            ],
                          ),
                          onPressed: () => context.read<VeiculosRegistradosBloc>().add(const VeiculosRegistradosEvent.buscarVeiculos()),
                        ),
                      ),
                    ),
                vazio: () => const SliverFillRemaining(
                      child: Center(child: EmptyContainerWidget(icon: Icon(Icons.directions_car_rounded), title: Text('Vazio'), subTitle: Text('Nenhum veiculo encontrado!'))),
                    ),
                encontrados: (veiculos, veiculoSelecionadoId) => SliverList.separated(
                      itemBuilder: (context, index) {
                        final veiculo = veiculos[index];
                        return ListTile(
                          onTap: veiculo.id != veiculoSelecionadoId ? () => context.read<VeiculosRegistradosBloc>().add(VeiculosRegistradosEvent.selecionarVeiculo(veiculo.id)) : null,
                          title: Text(veiculo.veiculo!),
                          subtitle: Text(veiculo.marca!),
                          leading: CircleAvatar(radius: 22, child: Text(veiculo.iniciais)),
                          trailing: veiculo.id == veiculoSelecionadoId
                              ? const Icon(Icons.check_circle_rounded, color: Colors.green)
                              : CircularProgressStateWidget<VeiculosRegistradosBloc, VeiculosRegistradosState>(
                                  isLoadingState: (state) => state.maybeWhen(orElse: () => false, selecionando: (veiculoId) => veiculo.id == veiculoId),
                                  buildButton: (context, state) => const SizedBox(),
                                ),
                        );
                      },
                      separatorBuilder: (context, index) => const Divider(),
                      itemCount: veiculos.length,
                    )),
          )
        ]),
      ),
    ));
  }
}
