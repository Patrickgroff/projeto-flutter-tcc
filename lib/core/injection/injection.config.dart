// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:gest_car/application/login/bloc/login_bloc.dart' as _i10;
import 'package:gest_car/application/register/bloc/register_bloc.dart' as _i11;
import 'package:gest_car/core/injection/register_singleton_module.dart' as _i12;
import 'package:gest_car/core/router/app_router.dart' as _i5;
import 'package:gest_car/data/user/datasources/user_datasource.db.dart' as _i6;
import 'package:gest_car/data/user/datasources/user_shared_preference_datasource.db.dart'
    as _i7;
import 'package:gest_car/data/user/repositories/user.repository.dart' as _i9;
import 'package:gest_car/domain/user/repositories/user.repository.i.dart'
    as _i8;
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
    gh.factory<_i6.UserDBDataSource>(
        () => _i6.UserDBDataSource(gh<_i4.Database>()));
    gh.factory<_i7.UserSharedPrefDataSource>(
        () => _i7.UserSharedPrefDataSource(gh<_i3.SharedPreferences>()));
    gh.factory<_i8.IUserRepository>(() => _i9.UserRepository(
          userDB: gh<_i6.UserDBDataSource>(),
          userSP: gh<_i7.UserSharedPrefDataSource>(),
        ));
    gh.factory<_i10.LoginBloc>(() => _i10.LoginBloc(gh<_i8.IUserRepository>()));
    gh.factory<_i11.RegisterBloc>(
        () => _i11.RegisterBloc(gh<_i8.IUserRepository>()));
    return this;
  }
}

class _$RegisterSingletonModule extends _i12.RegisterSingletonModule {}
