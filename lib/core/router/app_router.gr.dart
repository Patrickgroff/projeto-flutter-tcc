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
    RegistrarUsuarioRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegistrarUsuarioPage(),
      );
    },
    RegistrarVeiculoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegistrarVeiculoPage(),
      );
    },
  };
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
class RegistrarVeiculoRoute extends PageRouteInfo<void> {
  const RegistrarVeiculoRoute({List<PageRouteInfo>? children})
      : super(
          RegistrarVeiculoRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrarVeiculoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
