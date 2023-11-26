import 'package:auto_route/auto_route.dart';
import 'package:gest_car/core/injection/injection.dart';
import 'package:gest_car/core/router/app_router.dart';
import 'package:gest_car/domain/usuario/repositories/usuario.repository.i.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final usuarioAutenticado = await getIt<IUsuarioRepository>().loggedInUsuario;
    if (usuarioAutenticado != null) {
      resolver.next(true);
    } else {
      resolver.redirect(const LoginRoute());
    }
  }
}
