import 'package:common_widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gest_car/core/app_environment.dart';
import 'package:gest_car/core/injection/injection.dart';
import 'package:gest_car/core/router/app_router.dart';
import 'package:intl/intl.dart';

class App extends StatefulWidget {
  final String enviroment;
  const App({super.key, required this.enviroment});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // This widget is the root of your application.
  @override
  void initState() {
    Intl.defaultLocale = 'en_US';
    // analytics.setAnalyticsCollectionEnabled(true);

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Gest Car',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routerConfig: getIt<AppRouter>().config(),
      debugShowCheckedModeBanner: widget.enviroment == AppEnvironment.develop,
    );
  }
}
