import 'package:app/features/home/bloc/home/home_cubit.dart';
import 'package:app/features/home/widgets/widgets.dart';
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
  final scrollController = ScrollController();
  final cubit = HomeCubit();

  @override
  void initState() {
    super.initState();
    cubit.update();
  }

  @override
  void dispose() {
    cubit.clear();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => cubit)],
      child: CustomScrollView(
        controller: scrollController,
        slivers: [
          HomeAppBar(),
          SliverToBoxAdapter(child: HomeEstablishments()),
          HomeProducts(),
        ],
      ),
    );
  }
}
