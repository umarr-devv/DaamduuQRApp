import 'package:app/features/home/bloc/home/home_cubit.dart';
import 'package:app/features/home/widgets/widgets.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final cubit = HomeCubit();

  @override
  void initState() {
    super.initState();
    cubit.update();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => cubit)],
      child: Scaffold(
        body: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            HomeAppBar(),
            SliverToBoxAdapter(child: HomeSearchBar()),
            SliverToBoxAdapter(child: HomeFilter()),
            SliverToBoxAdapter(child: HomeEstablishments()),
            HomeProducts(),
            SliverToBoxAdapter(child: NavBarSpace()),
          ],
        ),
      ),
    );
  }
}
