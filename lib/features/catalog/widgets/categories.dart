import 'package:app/features/catalog/bloc/catalog/catalog_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:group_button/group_button.dart';

class CatalogCategories extends StatelessWidget implements PreferredSizeWidget {
  const CatalogCategories({super.key});

  @override
  Size get preferredSize => Size.fromHeight(36);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CatalogCubit, CatalogState>(
      bloc: BlocProvider.of<CatalogCubit>(context),
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: GroupButton<CategoryScheme>(
              isRadio: true,
              onSelected: (value, index, isSelected) {},
              buttons: state.categories,
              buttonBuilder: (selected, category, context) {
                return _CategoryButton(selected: selected, category: category);
              },
            ),
          ),
        );
      },
    );
  }
}

class _CategoryButton extends StatelessWidget {
  const _CategoryButton({required this.selected, required this.category});

  final bool selected;
  final CategoryScheme category;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
      decoration: BoxDecoration(
        color: selected
            ? theme.custom.primaryColor
            : theme.custom.secondaryBackground,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        category.name,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: selected
              ? theme.custom.white
              : theme.custom.secondaryForeground,
        ),
      ),
    );
  }
}
