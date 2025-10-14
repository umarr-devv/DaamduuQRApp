// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [CategoryScreen]
class CategoryRoute extends PageRouteInfo<CategoryRouteArgs> {
  CategoryRoute({
    Key? key,
    required CategoryScheme category,
    List<PageRouteInfo>? children,
  }) : super(
         CategoryRoute.name,
         args: CategoryRouteArgs(key: key, category: category),
         initialChildren: children,
       );

  static const String name = 'CategoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CategoryRouteArgs>();
      return CategoryScreen(key: args.key, category: args.category);
    },
  );
}

class CategoryRouteArgs {
  const CategoryRouteArgs({this.key, required this.category});

  final Key? key;

  final CategoryScheme category;

  @override
  String toString() {
    return 'CategoryRouteArgs{key: $key, category: $category}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CategoryRouteArgs) return false;
    return key == other.key && category == other.category;
  }

  @override
  int get hashCode => key.hashCode ^ category.hashCode;
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
