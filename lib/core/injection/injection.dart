import 'package:gest_car/core/injection/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(initializerName: 'init', preferRelativeImports: false)
Future<void> configureDependencies(String environment) async => await getIt.init(environment: environment);
