import 'package:animated_theme_switcher/animated_theme_switcher.dart';
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
  final themeCubit = ThemeCubit();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit()),
        BlocProvider(create: (context) => PermissionCubit()),
        BlocProvider(create: (context) => OrderCubit()),
        BlocProvider(create: (context) => FavoriteCubit()),
        BlocProvider.value(value: themeCubit),
      ],
      child: ThemeProvider(
        initTheme: themeCubit.state.isDarkTheme
            ? CustomThemeData(brightness: Brightness.dark).toTheme()
            : CustomThemeData(brightness: Brightness.light).toTheme(),
        builder: (context, theme) {
          return MaterialApp.router(
            title: 'DaamduuQR',
            theme: theme,
            debugShowCheckedModeBanner: false,
            routerConfig: appRoute.config(
              navigatorObservers: () => [
                TalkerRouteObserver(GetIt.I<Talker>()),
              ],
            ),
          );
        },
      ),
    );
  }
}
