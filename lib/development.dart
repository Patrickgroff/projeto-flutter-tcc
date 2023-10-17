import 'package:flutter/material.dart';
import 'package:gest_car/app.dart';
import 'package:gest_car/core/app_environment.dart';
import 'package:gest_car/core/injection/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /* await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); */
  await configureDependencies(AppEnvironment.develop);
  runApp(const App(enviroment: AppEnvironment.develop));
}
