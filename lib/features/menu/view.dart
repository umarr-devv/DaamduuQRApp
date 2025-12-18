import 'package:app/core/router/router.dart';
import 'package:app/features/menu/widgets/widgets.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

@RoutePage()
class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AutoTabsRouter.pageView(
      routes: [HomeRoute(), OrderRoute(), FavoriteRoute(), ProfileRoute()],
      physics: const NeverScrollableScrollPhysics(),
      duration: const Duration(milliseconds: 175),
      curve: Curves.easeIn,
      builder: (context, child, controller) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: child,
          backgroundColor: theme.custom.muted,
          bottomNavigationBar: MenuNavBar(),
        );
      },
    );
  }
}
