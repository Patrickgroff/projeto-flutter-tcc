import 'package:auto_route/auto_route.dart';
import 'package:common_widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gest_car/application/linha_do_tempo/bloc/linha_do_tempo_bloc.dart';
import 'package:gest_car/application/linha_do_tempo/widgets/app_drawer.widget.dart';
import 'package:gest_car/application/linha_do_tempo/widgets/linha_do_tempo_header_filtro.widget.dart';
import 'package:gest_car/application/linha_do_tempo/widgets/linha_do_tempo_item.widget.dart';
import 'package:gest_car/application/linha_do_tempo/widgets/linha_do_tempo_skeleton_item.widget.dart';
import 'package:gest_car/core/injection/injection.dart';

@RoutePage()
class LinhaDoTempoPage extends StatelessWidget {
  static const path = '/linha-do-tempo';
  const LinhaDoTempoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawerWidget(),
      body: SafeArea(
        child: BlocProvider(
          create: (_) => getIt<LinhaDoTempoBloc>()..add(const LinhaDoTempoEvent.garregar()),
          child: CustomScrollView(
            slivers: [
              const SliverAppBar(title: Text('Linha Do Tempo')),
              LinhaDoTempoHeaderFiltroWidget(),
              BlocBuilder<LinhaDoTempoBloc, LinhaDoTempoState>(
                buildWhen: (p, c) => c.maybeWhen(orElse: () => true, erro: (_) => false),
                builder: (context, state) => state.maybeWhen(
                  orElse: () => SliverList.builder(itemCount: 6, itemBuilder: (context, index) => LinhaDoTempoSkeletonItemWidget(isFirst: index == 0, isLast: index == 5)),
                  vazio: () => const SliverFillRemaining(
                    child: Center(child: EmptyContainerWidget(icon: Icon(Icons.insights_rounded), title: Text('Vazio'), subTitle: Text('Nenhum evento encontrado!'))),
                  ),
                  successo: (items) => SliverList.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) => LinhaDoTempoItemWidget(item: items[index], isFirst: index == 0, isLast: index == items.length - 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
