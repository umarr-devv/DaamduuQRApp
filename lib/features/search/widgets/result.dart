import 'package:app/features/search/bloc/search/search_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchLoading) {
          return Align(
            alignment: Alignment.center,
            child: SpinKitRing(
              size: 64,
              color: theme.custom.primary),
          );
        } else if (state is SearchLoaded && state.products.isEmpty) {
          return Column(
            spacing: 12,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/svg/face-sad-sweat.svg',
                height: 96,
                width: 96,
                colorFilter: ColorFilter.mode(
                  theme.custom.secondaryFg,
                  BlendMode.srcIn,
                ),
              ),
              Text('Ничего не найдено', style: theme.custom.labelMediumAlt),
            ],
          );
        } else {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) {
                return ProductCard(product: state.products[index]);
              },
              itemCount: state.products.length,
            ),
          );
        }
      },
    );
  }
}
