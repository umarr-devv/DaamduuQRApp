import 'package:app/features/catalog/view.dart';
import 'package:app/features/establishment/view.dart';
import 'package:app/features/favorite/view.dart';
import 'package:app/features/history/view.dart';
import 'package:app/features/home/view.dart';
import 'package:app/features/init/view.dart';
import 'package:app/features/menu/view.dart';
import 'package:app/features/notifications/view.dart';
import 'package:app/features/order/view.dart';
import 'package:app/features/product/view.dart';
import 'package:app/features/profile/view.dart';
import 'package:app/features/scanner/view.dart';
import 'package:app/features/search/view.dart';
import 'package:app/features/settings/view.dart';
import 'package:app/features/story/view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
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
        AutoRoute(page: OrderRoute.page),
        AutoRoute(page: ProfileRoute.page),
      ],
    ),
    CustomRoute(
      page: EstablishmentRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: CatalogRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: ProductRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: OrderRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: StoryRoute.page,
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),
    CustomRoute(
      page: ScannerRoute.page,
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),
    CustomRoute(
      page: SearchRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: HistoryRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: NotificationsRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: SettingsRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
  ];
}
