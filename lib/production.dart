import 'package:flutter/material.dart';
import 'package:gest_car/app.dart';
import 'package:gest_car/core/app_environment.dart';
import 'package:gest_car/core/injection/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /* GoogleFonts.config.allowRuntimeFetching = false;
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/fonts/roboto/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  }); */

  /* await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform); */
  await configureDependencies(AppEnvironment.production);

  runApp(const App(enviroment: AppEnvironment.production));
}
