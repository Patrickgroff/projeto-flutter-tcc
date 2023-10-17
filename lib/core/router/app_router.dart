import 'package:auto_route/auto_route.dart';
import 'package:gest_car/application/login/pages/login.page.dart';
import 'package:gest_car/application/register/pages/register.page.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(page: RegisterRoute.page),
      ];
}
