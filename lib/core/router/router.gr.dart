// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [CatalogScreen]
class CatalogRoute extends PageRouteInfo<CatalogRouteArgs> {
  CatalogRoute({
    Key? key,
    required EstablishmentScheme establishment,
    List<PageRouteInfo>? children,
  }) : super(
         CatalogRoute.name,
         args: CatalogRouteArgs(key: key, establishment: establishment),
         initialChildren: children,
       );

  static const String name = 'CatalogRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CatalogRouteArgs>();
      return CatalogScreen(key: args.key, establishment: args.establishment);
    },
  );
}

class CatalogRouteArgs {
  const CatalogRouteArgs({this.key, required this.establishment});

  final Key? key;

  final EstablishmentScheme establishment;

  @override
  String toString() {
    return 'CatalogRouteArgs{key: $key, establishment: $establishment}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CatalogRouteArgs) return false;
    return key == other.key && establishment == other.establishment;
  }

  @override
  int get hashCode => key.hashCode ^ establishment.hashCode;
}

/// generated route for
/// [EstablishmentScreen]
class EstablishmentRoute extends PageRouteInfo<EstablishmentRouteArgs> {
  EstablishmentRoute({
    Key? key,
    required EstablishmentScheme establishment,
    List<PageRouteInfo>? children,
  }) : super(
         EstablishmentRoute.name,
         args: EstablishmentRouteArgs(key: key, establishment: establishment),
         initialChildren: children,
       );

  static const String name = 'EstablishmentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EstablishmentRouteArgs>();
      return EstablishmentScreen(
        key: args.key,
        establishment: args.establishment,
      );
    },
  );
}

class EstablishmentRouteArgs {
  const EstablishmentRouteArgs({this.key, required this.establishment});

  final Key? key;

  final EstablishmentScheme establishment;

  @override
  String toString() {
    return 'EstablishmentRouteArgs{key: $key, establishment: $establishment}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! EstablishmentRouteArgs) return false;
    return key == other.key && establishment == other.establishment;
  }

  @override
  int get hashCode => key.hashCode ^ establishment.hashCode;
}

/// generated route for
/// [FavoriteScreen]
class FavoriteRoute extends PageRouteInfo<void> {
  const FavoriteRoute({List<PageRouteInfo>? children})
    : super(FavoriteRoute.name, initialChildren: children);

  static const String name = 'FavoriteRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FavoriteScreen();
    },
  );
}

/// generated route for
/// [HistoryScreen]
class HistoryRoute extends PageRouteInfo<void> {
  const HistoryRoute({List<PageRouteInfo>? children})
    : super(HistoryRoute.name, initialChildren: children);

  static const String name = 'HistoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HistoryScreen();
    },
  );
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [InitScreen]
class InitRoute extends PageRouteInfo<void> {
  const InitRoute({List<PageRouteInfo>? children})
    : super(InitRoute.name, initialChildren: children);

  static const String name = 'InitRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const InitScreen();
    },
  );
}

/// generated route for
/// [MenuScreen]
class MenuRoute extends PageRouteInfo<void> {
  const MenuRoute({List<PageRouteInfo>? children})
    : super(MenuRoute.name, initialChildren: children);

  static const String name = 'MenuRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MenuScreen();
    },
  );
}

/// generated route for
/// [NotificationsScreen]
class NotificationsRoute extends PageRouteInfo<void> {
  const NotificationsRoute({List<PageRouteInfo>? children})
    : super(NotificationsRoute.name, initialChildren: children);

  static const String name = 'NotificationsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NotificationsScreen();
    },
  );
}

/// generated route for
/// [OrderScreen]
class OrderRoute extends PageRouteInfo<void> {
  const OrderRoute({List<PageRouteInfo>? children})
    : super(OrderRoute.name, initialChildren: children);

  static const String name = 'OrderRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OrderScreen();
    },
  );
}

/// generated route for
/// [ProductScreen]
class ProductRoute extends PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    Key? key,
    required ProductScheme product,
    List<PageRouteInfo>? children,
  }) : super(
         ProductRoute.name,
         args: ProductRouteArgs(key: key, product: product),
         initialChildren: children,
       );

  static const String name = 'ProductRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductRouteArgs>();
      return ProductScreen(key: args.key, product: args.product);
    },
  );
}

class ProductRouteArgs {
  const ProductRouteArgs({this.key, required this.product});

  final Key? key;

  final ProductScheme product;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, product: $product}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProductRouteArgs) return false;
    return key == other.key && product == other.product;
  }

  @override
  int get hashCode => key.hashCode ^ product.hashCode;
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileScreen();
    },
  );
}

/// generated route for
/// [ScannerScreen]
class ScannerRoute extends PageRouteInfo<void> {
  const ScannerRoute({List<PageRouteInfo>? children})
    : super(ScannerRoute.name, initialChildren: children);

  static const String name = 'ScannerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ScannerScreen();
    },
  );
}

/// generated route for
/// [SearchScreen]
class SearchRoute extends PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    Key? key,
    EstablishmentScheme? establishment,
    List<PageRouteInfo>? children,
  }) : super(
         SearchRoute.name,
         args: SearchRouteArgs(key: key, establishment: establishment),
         initialChildren: children,
       );

  static const String name = 'SearchRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SearchRouteArgs>(
        orElse: () => const SearchRouteArgs(),
      );
      return SearchScreen(key: args.key, establishment: args.establishment);
    },
  );
}

class SearchRouteArgs {
  const SearchRouteArgs({this.key, this.establishment});

  final Key? key;

  final EstablishmentScheme? establishment;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, establishment: $establishment}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SearchRouteArgs) return false;
    return key == other.key && establishment == other.establishment;
  }

  @override
  int get hashCode => key.hashCode ^ establishment.hashCode;
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SettingsScreen();
    },
  );
}

/// generated route for
/// [StoryScreen]
class StoryRoute extends PageRouteInfo<StoryRouteArgs> {
  StoryRoute({
    Key? key,
    required StoryScheme story,
    List<PageRouteInfo>? children,
  }) : super(
         StoryRoute.name,
         args: StoryRouteArgs(key: key, story: story),
         initialChildren: children,
       );

  static const String name = 'StoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<StoryRouteArgs>();
      return StoryScreen(key: args.key, story: args.story);
    },
  );
}

class StoryRouteArgs {
  const StoryRouteArgs({this.key, required this.story});

  final Key? key;

  final StoryScheme story;

  @override
  String toString() {
    return 'StoryRouteArgs{key: $key, story: $story}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! StoryRouteArgs) return false;
    return key == other.key && story == other.story;
  }

  @override
  int get hashCode => key.hashCode ^ story.hashCode;
}
