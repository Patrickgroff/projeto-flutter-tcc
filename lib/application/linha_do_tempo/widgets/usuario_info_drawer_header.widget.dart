import 'package:common_widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gest_car/application/linha_do_tempo/cubit/usuario_info_cubit.dart';
import 'package:gest_car/core/injection/injection.dart';

class UsuarioInfoDrawerHeader extends StatelessWidget {
  const UsuarioInfoDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider(
      create: (context) => getIt<UsuarioInfoCubit>()..buscarUsuarioLogado(),
      child: DrawerHeader(
        decoration: BoxDecoration(color: theme.colorScheme.primary),
        child: BlocBuilder<UsuarioInfoCubit, UsuarioInfoState>(
          builder: (context, state) => state.maybeWhen(
            orElse: () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Skeleton.circle(),
                Spacing.v12,
                Skeleton.mediumLabel(context),
                Spacing.v4,
                Skeleton.fullLabel(context),
              ],
            ),
            usuarioLogado: (usuario) => DefaultTextStyle(
              style: theme.textTheme.bodyMedium!.copyWith(color: theme.colorScheme.onPrimary),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(radius: 24, backgroundColor: theme.colorScheme.onPrimary, child: Text(usuario.iniciais)),
                  Spacing.v12,
                  Text('Olá ${usuario.nome}!', maxLines: 1),
                  Spacing.v4,
                  Text.rich(
                      TextSpan(children: [
                        WidgetSpan(child: Icon(Icons.smartphone_rounded, color: theme.colorScheme.onPrimary, size: 18), alignment: PlaceholderAlignment.middle),
                        const WidgetSpan(child: Spacing.h4),
                        TextSpan(text: usuario.telefone),
                      ]),
                      maxLines: 1),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
