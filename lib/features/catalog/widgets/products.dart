import 'package:app/features/catalog/bloc/catalog/catalog_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/globals/product_long_card.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grouped_list/grouped_list.dart';

class CatelogProducts extends StatelessWidget {
  const CatelogProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<CatalogCubit, CatalogState>(
      bloc: BlocProvider.of<CatalogCubit>(context),
      builder: (context, state) {
        return GroupedListView<ProductScheme, CategoryScheme>(
          elements: state.products,
          groupBy: (element) => element.category,
          groupHeaderBuilder: (element) => Container(
            padding: const EdgeInsets.only(
              top: 16,
              bottom: 8,
              left: 16,
              right: 16,
            ),
            decoration: BoxDecoration(color: theme.custom.primaryBackground),
            child: Text(
              element.category.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: theme.custom.secondaryForeground,
              ),
            ),
          ),
          itemBuilder: (context, element) => Container(
            height: 128,
            margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
            child: ProductLongCard(product: element),
          ),
          itemComparator: (item1, item2) => item1.id.compareTo(item2.id),
          // useStickyGroupSeparators: true,
          // floatingHeader: true,
          order: GroupedListOrder.ASC,
        );
      },
    );
  }
}
