import 'package:app/features/home/blocs/home_tops/home_tops_cubit.dart';
import 'package:app/features/home/widgets/widgets.dart';
import 'package:app/shared/widgets/components/sliver_space.dart';
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
  final cubit = HomeTopsCubit();

  @override
  void initState() {
    super.initState();
    cubit.update();
  }

  @override
  void dispose() {
    cubit.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider.value(value: cubit)],
      child: CustomScrollView(
        slivers: [
          HomeAppBar(),
          SpecialOffersCarousel(),
          SliverSpace(),
          TopEstablishmentsList(),
          SliverSpace(),
          TopProducts(),
        ],
      ),
    );
  }
}
