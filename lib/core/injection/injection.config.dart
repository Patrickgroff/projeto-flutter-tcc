// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:gest_car/application/linha_do_tempo/bloc/linha_do_tempo_bloc.dart'
    as _i29;
import 'package:gest_car/application/linha_do_tempo/cubit/usuario_info_cubit.dart'
    as _i37;
import 'package:gest_car/application/login/bloc/login_bloc.dart' as _i30;
import 'package:gest_car/application/registrar_abastecimento/bloc/registrar_abastecimento_bloc.dart'
    as _i31;
import 'package:gest_car/application/registrar_despesa/bloc/registrar_despesa_bloc.dart'
    as _i32;
import 'package:gest_car/application/registrar_receita/bloc/registrar_receita_bloc.dart'
    as _i33;
import 'package:gest_car/application/registrar_servico/bloc/registrar_servico_bloc.dart'
    as _i34;
import 'package:gest_car/application/registrar_usuario/bloc/registrar_usuario_bloc.dart'
    as _i35;
import 'package:gest_car/application/registrar_veiculo/bloc/registrar_veiculo_bloc.dart'
    as _i36;
import 'package:gest_car/application/veiculos_registrados/bloc/veiculos_registrados_bloc.dart'
    as _i38;
import 'package:gest_car/core/injection/register_singleton_module.dart' as _i39;
import 'package:gest_car/core/router/app_router.dart' as _i5;
import 'package:gest_car/data/abastecimento/datasources/abastecimento_db.datasource.dart'
    as _i16;
import 'package:gest_car/data/abastecimento/repositories/abastecimento.repository.dart'
    as _i18;
import 'package:gest_car/data/despesa/datasources/despesa_db.datasource.dart'
    as _i6;
import 'package:gest_car/data/despesa/repositories/despesa.repository.dart'
    as _i8;
import 'package:gest_car/data/linha_do_tempo/datasources/linha_do_tempo_db.datasource.dart'
    as _i9;
import 'package:gest_car/data/linha_do_tempo/repositories/linha_do_tempo.repository.dart'
    as _i20;
import 'package:gest_car/data/receita/datasources/receita_db.datasource.dart'
    as _i10;
import 'package:gest_car/data/receita/repositories/receita.repository.dart'
    as _i22;
import 'package:gest_car/data/servico/datasources/servico_db.datasource.dart'
    as _i11;
import 'package:gest_car/data/servico/repositories/servico.repository.dart'
    as _i24;
import 'package:gest_car/data/usuario/datasources/usuario_datasource.db.dart'
    as _i12;
import 'package:gest_car/data/usuario/datasources/usuario_shared_preference_datasource.db.dart'
    as _i13;
import 'package:gest_car/data/usuario/repositories/usuario.repository.dart'
    as _i26;
import 'package:gest_car/data/veiculo/datasources/veiculo_db.datasource.dart'
    as _i14;
import 'package:gest_car/data/veiculo/datasources/veiculo_sp.datasource.dart'
    as _i15;
import 'package:gest_car/data/veiculo/repositories/veiculo.repository.dart'
    as _i28;
import 'package:gest_car/domain/abastecimento/repositories/abastecimento.repository.i.dart'
    as _i17;
import 'package:gest_car/domain/despesa/repositories/despesa.repository.i.dart'
    as _i7;
import 'package:gest_car/domain/linha_do_tempo/repositories/linha_do_tempo.repository.i.dart'
    as _i19;
import 'package:gest_car/domain/receita/repositories/receita.repository.i.dart'
    as _i21;
import 'package:gest_car/domain/servico/repositories/servico.repository.i.dart'
    as _i23;
import 'package:gest_car/domain/usuario/repositories/usuario.repository.i.dart'
    as _i25;
import 'package:gest_car/domain/veiculo/repositories/veiculo.repository.i.dart'
    as _i27;
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
    gh.factory<_i6.DespesaDBDatasource>(
        () => _i6.DespesaDBDatasource(gh<_i4.Database>()));
    gh.factory<_i7.IDespesaRepository>(
        () => _i8.DespesaRepository(gh<_i6.DespesaDBDatasource>()));
    gh.factory<_i9.LinhaDoTempoDBDatasource>(
        () => _i9.LinhaDoTempoDBDatasource(gh<_i4.Database>()));
    gh.factory<_i10.ReceitaDBDatasource>(
        () => _i10.ReceitaDBDatasource(gh<_i4.Database>()));
    gh.factory<_i11.ServicoDBDatasource>(
        () => _i11.ServicoDBDatasource(gh<_i4.Database>()));
    gh.factory<_i12.UsuarioDBDataSource>(
        () => _i12.UsuarioDBDataSource(gh<_i4.Database>()));
    gh.factory<_i13.UsuarioSharedPrefDataSource>(
        () => _i13.UsuarioSharedPrefDataSource(gh<_i3.SharedPreferences>()));
    gh.factory<_i14.VeiculoDBDatasource>(
        () => _i14.VeiculoDBDatasource(gh<_i4.Database>()));
    gh.singleton<_i15.VeiculoSPDatasource>(
        _i15.VeiculoSPDatasource(gh<_i3.SharedPreferences>()));
    gh.factory<_i16.AbastecimentoDBDatasource>(
        () => _i16.AbastecimentoDBDatasource(gh<_i4.Database>()));
    gh.factory<_i17.IAbastecimentoRepository>(() =>
        _i18.AbastecimentoRepository(gh<_i16.AbastecimentoDBDatasource>()));
    gh.factory<_i19.ILinhaDoTempoRepository>(
        () => _i20.LinhaDoTempoRepository(gh<_i9.LinhaDoTempoDBDatasource>()));
    gh.factory<_i21.IReceitaRepository>(
        () => _i22.ReceitaRepository(gh<_i10.ReceitaDBDatasource>()));
    gh.factory<_i23.IServicoRepository>(
        () => _i24.ServicoRepository(gh<_i11.ServicoDBDatasource>()));
    gh.factory<_i25.IUsuarioRepository>(() => _i26.UsuarioRepository(
          usuarioDB: gh<_i12.UsuarioDBDataSource>(),
          usuarioSP: gh<_i13.UsuarioSharedPrefDataSource>(),
        ));
    gh.factory<_i27.IVeiculoRepository>(() => _i28.VeiculoRepository(
          gh<_i14.VeiculoDBDatasource>(),
          gh<_i15.VeiculoSPDatasource>(),
        ));
    gh.factory<_i29.LinhaDoTempoBloc>(() => _i29.LinhaDoTempoBloc(
          gh<_i19.ILinhaDoTempoRepository>(),
          gh<_i27.IVeiculoRepository>(),
        ));
    gh.factory<_i30.LoginBloc>(
        () => _i30.LoginBloc(gh<_i25.IUsuarioRepository>()));
    gh.factory<_i31.RegistrarAbastecimentoBloc>(
        () => _i31.RegistrarAbastecimentoBloc(
              gh<_i17.IAbastecimentoRepository>(),
              gh<_i27.IVeiculoRepository>(),
            ));
    gh.factory<_i32.RegistrarDespesaBloc>(() => _i32.RegistrarDespesaBloc(
          gh<_i7.IDespesaRepository>(),
          gh<_i27.IVeiculoRepository>(),
        ));
    gh.factory<_i33.RegistrarReceitaBloc>(() => _i33.RegistrarReceitaBloc(
          gh<_i21.IReceitaRepository>(),
          gh<_i27.IVeiculoRepository>(),
        ));
    gh.factory<_i34.RegistrarServicoBloc>(() => _i34.RegistrarServicoBloc(
          gh<_i23.IServicoRepository>(),
          gh<_i27.IVeiculoRepository>(),
        ));
    gh.factory<_i35.RegistrarUsuarioBloc>(
        () => _i35.RegistrarUsuarioBloc(gh<_i25.IUsuarioRepository>()));
    gh.factory<_i36.RegistrarVeiculoBloc>(() => _i36.RegistrarVeiculoBloc(
          gh<_i27.IVeiculoRepository>(),
          gh<_i25.IUsuarioRepository>(),
        ));
    gh.factory<_i37.UsuarioInfoCubit>(
        () => _i37.UsuarioInfoCubit(gh<_i25.IUsuarioRepository>()));
    gh.factory<_i38.VeiculosRegistradosBloc>(
        () => _i38.VeiculosRegistradosBloc(gh<_i27.IVeiculoRepository>()));
    return this;
  }
}

class _$RegisterSingletonModule extends _i39.RegisterSingletonModule {}
