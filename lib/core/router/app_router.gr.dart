// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    EditarUsuarioRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EditarUsuarioPage(),
      );
    },
    LinhaDoTempoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LinhaDoTempoPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    RegistrarAbastecimentoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegistrarAbastecimentoPage(),
      );
    },
    RegistrarDespesaRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegistrarDespesaPage(),
      );
    },
    RegistrarReceitaRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegistrarReceitaPage(),
      );
    },
    RegistrarServicoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegistrarServicoPage(),
      );
    },
    RegistrarUsuarioRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegistrarUsuarioPage(),
      );
    },
    RegistrarVeiculoRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<RegistrarVeiculoRouteArgs>(
          orElse: () => RegistrarVeiculoRouteArgs(
                usuarioId: pathParams.getInt('id'),
                veiculoId: pathParams.optInt('veiculoId'),
              ));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RegistrarVeiculoPage(
          key: args.key,
          usuarioId: args.usuarioId,
          veiculoId: args.veiculoId,
        ),
      );
    },
    VeiculosRegistradosRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VeiculosRegistradosPage(),
      );
    },
  };
}

/// generated route for
/// [EditarUsuarioPage]
class EditarUsuarioRoute extends PageRouteInfo<void> {
  const EditarUsuarioRoute({List<PageRouteInfo>? children})
      : super(
          EditarUsuarioRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditarUsuarioRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LinhaDoTempoPage]
class LinhaDoTempoRoute extends PageRouteInfo<void> {
  const LinhaDoTempoRoute({List<PageRouteInfo>? children})
      : super(
          LinhaDoTempoRoute.name,
          initialChildren: children,
        );

  static const String name = 'LinhaDoTempoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegistrarAbastecimentoPage]
class RegistrarAbastecimentoRoute extends PageRouteInfo<void> {
  const RegistrarAbastecimentoRoute({List<PageRouteInfo>? children})
      : super(
          RegistrarAbastecimentoRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrarAbastecimentoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegistrarDespesaPage]
class RegistrarDespesaRoute extends PageRouteInfo<void> {
  const RegistrarDespesaRoute({List<PageRouteInfo>? children})
      : super(
          RegistrarDespesaRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrarDespesaRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegistrarReceitaPage]
class RegistrarReceitaRoute extends PageRouteInfo<void> {
  const RegistrarReceitaRoute({List<PageRouteInfo>? children})
      : super(
          RegistrarReceitaRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrarReceitaRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegistrarServicoPage]
class RegistrarServicoRoute extends PageRouteInfo<void> {
  const RegistrarServicoRoute({List<PageRouteInfo>? children})
      : super(
          RegistrarServicoRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrarServicoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegistrarUsuarioPage]
class RegistrarUsuarioRoute extends PageRouteInfo<void> {
  const RegistrarUsuarioRoute({List<PageRouteInfo>? children})
      : super(
          RegistrarUsuarioRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrarUsuarioRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegistrarVeiculoPage]
class RegistrarVeiculoRoute extends PageRouteInfo<RegistrarVeiculoRouteArgs> {
  RegistrarVeiculoRoute({
    Key? key,
    required int usuarioId,
    int? veiculoId,
    List<PageRouteInfo>? children,
  }) : super(
          RegistrarVeiculoRoute.name,
          args: RegistrarVeiculoRouteArgs(
            key: key,
            usuarioId: usuarioId,
            veiculoId: veiculoId,
          ),
          rawPathParams: {
            'id': usuarioId,
            'veiculoId': veiculoId,
          },
          initialChildren: children,
        );

  static const String name = 'RegistrarVeiculoRoute';

  static const PageInfo<RegistrarVeiculoRouteArgs> page =
      PageInfo<RegistrarVeiculoRouteArgs>(name);
}

class RegistrarVeiculoRouteArgs {
  const RegistrarVeiculoRouteArgs({
    this.key,
    required this.usuarioId,
    this.veiculoId,
  });

  final Key? key;

  final int usuarioId;

  final int? veiculoId;

  @override
  String toString() {
    return 'RegistrarVeiculoRouteArgs{key: $key, usuarioId: $usuarioId, veiculoId: $veiculoId}';
  }
}

/// generated route for
/// [VeiculosRegistradosPage]
class VeiculosRegistradosRoute extends PageRouteInfo<void> {
  const VeiculosRegistradosRoute({List<PageRouteInfo>? children})
      : super(
          VeiculosRegistradosRoute.name,
          initialChildren: children,
        );

  static const String name = 'VeiculosRegistradosRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
