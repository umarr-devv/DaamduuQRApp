import 'package:app/features/home/bloc/recommendation/recommendation_cubit.dart';
import 'package:app/features/home/widgets/widgets.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final recommendationCubit = RecommendationCubit();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => recommendationCubit)],
      child: Scaffold(
        body: CustomSpinRefreshIndicator(
          onRefresh: () async {
            await recommendationCubit.update();
          },
          child: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              HomeAppBar(),
              SliverToBoxAdapter(child: HomeEstablishmentCategories()),
              SliverToBoxAdapter(child: HomeEstablishmentList()),
              SliverToBoxAdapter(child: HomeFoodCategoriesTitle()),
              HomeFoodCategories(),
              SliverToBoxAdapter(child: HomePopularFoodsTitle()),
              HomePopularFoodsList(),
              SliverPadding(padding: const EdgeInsets.only(top: 64)),
            ],
          ),
        ),
      ),
    );
  }
}
