import 'package:app/features/search/bloc/search/search_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchFilters extends StatelessWidget {
  const SearchFilters({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<SearchCubit, SearchState>(
      bloc: BlocProvider.of<SearchCubit>(context),
      builder: (context, state) {
        if (state.establishment != null) {
          return SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Поиск по заведению', style: theme.custom.label),
                  Text(
                    state.establishment?.name ?? '',
                    style: theme.custom.label,
                  ),
                ],
              ),
            ),
          );
        } else {
          return SliverToBoxAdapter();
        }
      },
    );
  }
}
