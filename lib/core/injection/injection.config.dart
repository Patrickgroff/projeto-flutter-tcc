// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:gest_car/application/editar_usuario/bloc/editar_usuario_bloc.dart'
    as _i6;
import 'package:gest_car/application/linha_do_tempo/bloc/linha_do_tempo_bloc.dart'
    as _i17;
import 'package:gest_car/application/linha_do_tempo/cubit/usuario_info_cubit.dart'
    as _i33;
import 'package:gest_car/application/login/bloc/login_bloc.dart' as _i30;
import 'package:gest_car/application/registrar_abastecimento/bloc/registrar_abastecimento_bloc.dart'
    as _i18;
import 'package:gest_car/application/registrar_despesa/bloc/registrar_despesa_bloc.dart'
    as _i19;
import 'package:gest_car/application/registrar_receita/bloc/registrar_receita_bloc.dart'
    as _i20;
import 'package:gest_car/application/registrar_servico/bloc/registrar_servico_bloc.dart'
    as _i21;
import 'package:gest_car/application/registrar_usuario/bloc/registrar_usuario_bloc.dart'
    as _i31;
import 'package:gest_car/application/registrar_veiculo/bloc/registrar_veiculo_bloc.dart'
    as _i32;
import 'package:gest_car/application/veiculos_registrados/bloc/veiculos_registrados_bloc.dart'
    as _i25;
import 'package:gest_car/core/injection/register_singleton_module.dart' as _i34;
import 'package:gest_car/core/router/app_router.dart' as _i5;
import 'package:gest_car/data/abastecimento/repositories/abastecimento.dart'
    as _i8;
import 'package:gest_car/data/despesa/repositories/despesa.dart' as _i10;
import 'package:gest_car/data/linha_do_tempo/repositories/linha_do_tempo.repository.dart'
    as _i12;
import 'package:gest_car/data/receita/repositories/receita.dart' as _i14;
import 'package:gest_car/data/servico/repositories/servico.dart' as _i16;
import 'package:gest_car/data/usuario/datasources/usuario_datasource.db.dart'
    as _i22;
import 'package:gest_car/data/usuario/datasources/usuario_shared_preference_datasource.db.dart'
    as _i23;
import 'package:gest_car/data/usuario/repositories/usuario.repository.dart'
    as _i27;
import 'package:gest_car/data/veiculo/datasources/veiculo_db.datasource.dart'
    as _i24;
import 'package:gest_car/data/veiculo/repositories/veiculo.repository.dart'
    as _i29;
import 'package:gest_car/domain/abastecimento/repositories/abastecimento.repository.i.dart'
    as _i7;
import 'package:gest_car/domain/despesa/repositories/despesa.repository.i.dart'
    as _i9;
import 'package:gest_car/domain/linha_do_tempo/repositories/linha_do_tempo.repository.i.dart'
    as _i11;
import 'package:gest_car/domain/receita/repositories/receita.repository.i.dart'
    as _i13;
import 'package:gest_car/domain/servico/repositories/servico.repository.i.dart'
    as _i15;
import 'package:gest_car/domain/usuario/repositories/usuario.repository.i.dart'
    as _i26;
import 'package:gest_car/domain/veiculo/repositories/veiculo.repository.i.dart'
    as _i28;
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
    gh.factory<_i6.EditarUsuarioBloc>(() => _i6.EditarUsuarioBloc());
    gh.factory<_i7.IAbastecimentoRepository>(
        () => _i8.AbastecimentoRepository());
    gh.factory<_i9.IDespesaRepository>(() => _i10.DespesaRepository());
    gh.factory<_i11.ILinhaDoTempoRepository>(
        () => _i12.LinhaDoTempoRepository());
    gh.factory<_i13.IReceitaRepository>(() => _i14.ReceitaRepository());
    gh.factory<_i15.IServicoRepository>(() => _i16.ServicoRepository());
    gh.factory<_i17.LinhaDoTempoBloc>(
        () => _i17.LinhaDoTempoBloc(gh<_i11.ILinhaDoTempoRepository>()));
    gh.factory<_i18.RegistrarAbastecimentoBloc>(() =>
        _i18.RegistrarAbastecimentoBloc(gh<_i7.IAbastecimentoRepository>()));
    gh.factory<_i19.RegistrarDespesaBloc>(
        () => _i19.RegistrarDespesaBloc(gh<_i9.IDespesaRepository>()));
    gh.factory<_i20.RegistrarReceitaBloc>(
        () => _i20.RegistrarReceitaBloc(gh<_i13.IReceitaRepository>()));
    gh.factory<_i21.RegistrarServicoBloc>(
        () => _i21.RegistrarServicoBloc(gh<_i15.IServicoRepository>()));
    gh.factory<_i22.UsuarioDBDataSource>(
        () => _i22.UsuarioDBDataSource(gh<_i4.Database>()));
    gh.factory<_i23.UsuarioSharedPrefDataSource>(
        () => _i23.UsuarioSharedPrefDataSource(gh<_i3.SharedPreferences>()));
    gh.factory<_i24.VeiculoDBDatasource>(
        () => _i24.VeiculoDBDatasource(gh<_i4.Database>()));
    gh.factory<_i25.VeiculosRegistradosBloc>(
        () => _i25.VeiculosRegistradosBloc());
    gh.factory<_i26.IUsuarioRepository>(() => _i27.UsuarioRepository(
          usuarioDB: gh<_i22.UsuarioDBDataSource>(),
          usuarioSP: gh<_i23.UsuarioSharedPrefDataSource>(),
        ));
    gh.factory<_i28.IVeiculoRepository>(
        () => _i29.VeiculoRepository(gh<_i24.VeiculoDBDatasource>()));
    gh.factory<_i30.LoginBloc>(
        () => _i30.LoginBloc(gh<_i26.IUsuarioRepository>()));
    gh.factory<_i31.RegistrarUsuarioBloc>(
        () => _i31.RegistrarUsuarioBloc(gh<_i26.IUsuarioRepository>()));
    gh.factory<_i32.RegistrarVeiculoBloc>(() => _i32.RegistrarVeiculoBloc(
          gh<_i28.IVeiculoRepository>(),
          gh<_i26.IUsuarioRepository>(),
        ));
    gh.factory<_i33.UsuarioInfoCubit>(
        () => _i33.UsuarioInfoCubit(gh<_i26.IUsuarioRepository>()));
    return this;
  }
}

class _$RegisterSingletonModule extends _i34.RegisterSingletonModule {}
