import 'package:app/features/favorite/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {

  final scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
        slivers: [
          FavoriteAppBar(scrollController: scrollController),
          SliverFillRemaining(child: FavoriteEmpty()),
          // SliverToBoxAdapter(child: NavBarSpace()),
        ],
 
    );
  }
}
