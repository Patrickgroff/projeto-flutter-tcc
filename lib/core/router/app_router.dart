import 'package:auto_route/auto_route.dart';
import 'package:gest_car/application/linha_do_tempo/page/linha_do_tempo.page.dart';
import 'package:gest_car/application/login/pages/login.page.dart';
import 'package:gest_car/application/registrar_abastecimento/page/registrar_abastecimento.page.dart';
import 'package:gest_car/application/registrar_despesa/page/registrar_despesa.page.dart';
import 'package:gest_car/application/registrar_receita/page/registrar_receita.page.dart';
import 'package:gest_car/application/registrar_servico/page/registrar_servico.page.dart';
import 'package:gest_car/application/registrar_usuario/page/registrar_usuario.page.dart';
import 'package:gest_car/application/registrar_veiculo/page/registrar_veiculo.page.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(page: RegistrarVeiculoRoute.page),
        AutoRoute(page: RegistrarUsuarioRoute.page),
        AutoRoute(page: LinhaDoTempoRoute.page),
        AutoRoute(page: RegistrarAbastecimentoRoute.page),
        AutoRoute(page: RegistrarDespesaRoute.page),
        AutoRoute(page: RegistrarServicoRoute.page),
        AutoRoute(page: RegistrarReceitaRoute.page),
      ];
}
