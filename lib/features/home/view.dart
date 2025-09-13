import 'package:app/features/home/widgets/card.dart';
import 'package:app/features/home/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          HomeAppBar(),
          SliverToBoxAdapter(child: HomeStories()),
          SliverToBoxAdapter(child: HomeCard()),
          SliverToBoxAdapter(child: HomeEestablishmentList()),
          SliverToBoxAdapter(child: HomeFoodList()),
          SliverFillRemaining(),
        ],
      ),
    );
  }
}
