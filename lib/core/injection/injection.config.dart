// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:gest_car/application/linha_do_tempo/bloc/linha_do_tempo_bloc.dart'
    as _i16;
import 'package:gest_car/application/login/bloc/login_bloc.dart' as _i27;
import 'package:gest_car/application/registrar_abastecimento/bloc/registrar_abastecimento_bloc.dart'
    as _i17;
import 'package:gest_car/application/registrar_usuario/bloc/registrar_usuario_bloc.dart'
    as _i18;
import 'package:gest_car/application/registrar_veiculo/bloc/registrar_veiculo_bloc.dart'
    as _i19;
import 'package:gest_car/core/injection/register_singleton_module.dart' as _i28;
import 'package:gest_car/core/router/app_router.dart' as _i5;
import 'package:gest_car/data/abastecimento/repositories/abastecimento.dart'
    as _i7;
import 'package:gest_car/data/despesa/repositories/despesa.dart' as _i9;
import 'package:gest_car/data/receita/repositories/receita.dart' as _i11;
import 'package:gest_car/data/servico/repositories/servico.dart' as _i13;
import 'package:gest_car/data/user/datasources/user_datasource.db.dart' as _i21;
import 'package:gest_car/data/usuario/datasources/user_datasource.db.dart'
    as _i22;
import 'package:gest_car/data/usuario/datasources/usuario_datasource.db.dart'
    as _i20;
import 'package:gest_car/data/usuario/datasources/usuario_shared_preference_datasource.db.dart'
    as _i23;
import 'package:gest_car/data/usuario/repositories/usuario.repository.dart'
    as _i26;
import 'package:gest_car/data/veiculo/datasources/veiculo_db.datasource.dart'
    as _i24;
import 'package:gest_car/data/veiculo/repositories/veiculo.dart' as _i15;
import 'package:gest_car/domain/abastecimento/repositories/abastecimento.repository.i.dart'
    as _i6;
import 'package:gest_car/domain/despesa/repositories/despesa.repository.i.dart'
    as _i8;
import 'package:gest_car/domain/receita/repositories/receita.repository.i.dart'
    as _i10;
import 'package:gest_car/domain/servico/repositories/servico.repository.i.dart'
    as _i12;
import 'package:gest_car/domain/usuario/repositories/usuario.repository.i.dart'
    as _i25;
import 'package:gest_car/domain/veiculo/repositories/veiculo.repository.i.dart'
    as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;
import 'package:sqflite/sqflite.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerSingletonModule = _$RegisterSingletonModule();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => registerSingletonModule.prefs,
      preResolve: true,
    );
    await gh.singletonAsync<_i4.Database>(
      () => registerSingletonModule.db,
      preResolve: true,
    );
    gh.singleton<_i5.AppRouter>(_i5.AppRouter());
    gh.factory<_i6.IAbastecimentoRepository>(
        () => _i7.AbastecimentoRepository());
    gh.factory<_i8.IDespesaRepository>(() => _i9.DespesaRepository());
    gh.factory<_i10.IReceitaRepository>(() => _i11.ReceitaRepository());
    gh.factory<_i12.IServicoRepository>(() => _i13.ServicoRepository());
    gh.factory<_i14.IVeiculoRepository>(() => _i15.VeiculoRepository());
    gh.factory<_i16.LinhaDoTempoBloc>(() => _i16.LinhaDoTempoBloc());
    gh.factory<_i17.RegistrarAbastecimentoBloc>(
        () => _i17.RegistrarAbastecimentoBloc());
    gh.factory<_i18.RegistrarUsuarioBloc>(() => _i18.RegistrarUsuarioBloc());
    gh.factory<_i19.RegistrarVeiculoBloc>(() => _i19.RegistrarVeiculoBloc());
    gh.factory<_i20.UsuarioDBDataSource>(
        () => _i20.UsuarioDBDataSource(gh<_i4.Database>()));
    gh.factory<_i21.UsuarioDBDataSource>(
        () => _i21.UsuarioDBDataSource(gh<_i4.Database>()));
    gh.factory<_i22.UsuarioDBDataSource>(
        () => _i22.UsuarioDBDataSource(gh<_i4.Database>()));
    gh.factory<_i23.UsuarioSharedPrefDataSource>(
        () => _i23.UsuarioSharedPrefDataSource(gh<_i3.SharedPreferences>()));
    gh.factory<_i24.VeiculoDBDatasource>(
        () => _i24.VeiculoDBDatasource(gh<_i4.Database>()));
    gh.factory<_i25.IUsuarioRepository>(() => _i26.UsuarioRepository(
          usuarioDB: gh<_i20.UsuarioDBDataSource>(),
          usuarioSP: gh<_i23.UsuarioSharedPrefDataSource>(),
        ));
    gh.factory<_i27.LoginBloc>(
        () => _i27.LoginBloc(gh<_i25.IUsuarioRepository>()));
    return this;
  }
}

class _$RegisterSingletonModule extends _i28.RegisterSingletonModule {}
