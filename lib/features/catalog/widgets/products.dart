import 'package:app/features/catalog/bloc/catalog/catalog_cubit.dart';
import 'package:app/shared/widgets/globals/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatelogProducts extends StatelessWidget {
  const CatelogProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CatalogCubit, CatalogState>(
      bloc: BlocProvider.of<CatalogCubit>(context),
      builder: (context, state) {
        return SliverPadding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 0.75,
            ),
            delegate: SliverChildBuilderDelegate((context, index) {
              return ProductCard(product: state.currenctProducts[index]);
            }, childCount: state.currenctProducts.length),
          ),
        );
      },
    );
  }
}
