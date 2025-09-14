import 'package:app/core/router/router.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  final appRoute = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'DaamduuQR',
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: appRoute.config(
        navigatorObservers: () => [TalkerRouteObserver(GetIt.I<Talker>())],
      ),
    );
  }
}
