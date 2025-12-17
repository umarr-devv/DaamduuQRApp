import 'package:app/features/search/bloc/search/search_cubit.dart';
import 'package:app/features/search/widgets/widgets.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:auto_route/annotations.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key, this.establishment});

  final EstablishmentScheme? establishment;

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late SearchCubit cubit;

  @override
  void initState() {
    cubit = SearchCubit(establishment: widget.establishment);
    super.initState();
  }

  @override
  void dispose() {
    cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MultiBlocProvider(
      providers: [BlocProvider.value(value: cubit)],
      child: Scaffold(
        backgroundColor: theme.custom.muted,
        body: CustomScrollView(
          slivers: [
            SearchAppBar(),
            SearchFilters(),
            SliverFillRemaining(child: SearchResult()),
          ],
        ),
      ),
    );
  }
}
