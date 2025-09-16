import 'package:app/features/category/view.dart';
import 'package:app/features/establishment/view.dart';
import 'package:app/features/favorite/view.dart';
import 'package:app/features/home/view.dart';
import 'package:app/features/home/widgets/food_category.dart';
import 'package:app/features/init/view.dart';
import 'package:app/features/location/view.dart';
import 'package:app/features/menu/view.dart';
import 'package:app/features/profile/view.dart';
import 'package:app/features/scanner/view.dart';
import 'package:app/features/story/view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

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
      page: EstablishmentRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: CategoryRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: StoryRoute.page,
      transitionsBuilder: TransitionsBuilders.slideTop,
    ),
    CustomRoute(
      page: ScannerRoute.page,
      transitionsBuilder: TransitionsBuilders.slideTop,
      fullscreenDialog: true,
    ),
  ];
}
