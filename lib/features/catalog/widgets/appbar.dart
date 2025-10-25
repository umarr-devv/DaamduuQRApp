import 'package:app/core/router/router.dart';
import 'package:app/features/catalog/bloc/catalog/catalog_cubit.dart';
import 'package:app/features/catalog/widgets/categories.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/components/components.dart';
import 'package:auto_route/auto_route.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatalogAppBar extends StatefulWidget {
  const CatalogAppBar({super.key});

  @override
  State<CatalogAppBar> createState() => _CatalogAppBarState();
}

class _CatalogAppBarState extends State<CatalogAppBar> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<CatalogCubit, CatalogState>(
      bloc: BlocProvider.of<CatalogCubit>(context),
      builder: (context, state) {
        return SliverAppBar(
          backgroundColor: theme.custom.primaryBackground,
          pinned: true,
          leading: _AppBarLeading(),
          title: _AppBarTitle(establishment: state.establishment),
          actions: [
            CustomIconButton(
              icon: 'assets/svg/search.svg',
              shadow: false,
              radius: 12,
              onTap: () {
                AutoRouter.of(
                  context,
                ).push(SearchRoute(textController: TextEditingController()));
              },
            ),
            SizedBox(width: 8),
          ],
          bottom: CatalogCategories(),
        );
      },
    );
  }
}

class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle({required this.establishment});

  final EstablishmentScheme establishment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Меню',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: theme.custom.primaryColor,
          ),
        ),
        Text(
          establishment.name,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: theme.custom.secondaryForeground,
          ),
        ),
      ],
    );
  }
}

class _AppBarLeading extends StatelessWidget {
  const _AppBarLeading();

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: CustomIconButton(
        icon: Icons.arrow_back,
        shadow: false,
        radius: 12,
        onTap: () {
          AutoRouter.of(context).maybePop();
        },
      ),
    );
  }
}
