import 'package:app/features/favorite/view.dart';
import 'package:app/features/home/view.dart';
import 'package:app/features/init/view.dart';
import 'package:app/features/location/view.dart';
import 'package:app/features/menu/view.dart';
import 'package:app/features/profile/view.dart';
import 'package:app/features/story/view.dart';
import 'package:auto_route/auto_route.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: InitRoute.page),
    AutoRoute(
      page: MenuRoute.page,
      initial: true,
      children: [
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: FavoriteRoute.page),
        AutoRoute(page: LocationRoute.page),
        AutoRoute(page: ProfileRoute.page),
      ],
    ),
    CustomRoute(
      page: StoryRoute.page,
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),
  ];
}
