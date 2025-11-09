import 'package:app/blocs/blocs.dart';
import 'package:app/core/router/router.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit()),
        BlocProvider(create: (context) => PermissionCubit()),
        BlocProvider(create: (context) => OrderCubit()),
        BlocProvider(create: (context) => FavoriteCubit()),
      ],
      child: MaterialApp.router(
        title: 'DaamduuQR',
        theme: lightTheme,
        debugShowCheckedModeBanner: false,
        routerConfig: appRoute.config(
          navigatorObservers: () => [TalkerRouteObserver(GetIt.I<Talker>())],
        ),
      ),
    );
  }
}
