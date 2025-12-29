import 'package:app/core/router/router.dart';
import 'package:app/features/product/bloc/product/product_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductEstablishments extends StatelessWidget {
  const ProductEstablishments({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<ProductCubit, ProductState>(
      bloc: BlocProvider.of<ProductCubit>(context),
      builder: (context, state) {
        if (state.detailProduct?.establishments != null) {
          return SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                spacing: 12,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Заведения', style: theme.custom.label),
                  Column(
                    spacing: 8,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: state.detailProduct!.establishments!.map((i) {
                      return _EstablishmentItem(establishment: i);
                    }).toList(),
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

class _EstablishmentItem extends StatelessWidget {
  const _EstablishmentItem({required this.establishment});

  final EstablishmentScheme establishment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      spacing: 12,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(establishment.name, style: theme.custom.label),
              Row(
                spacing: 4,
                children: [
                  Icon(
                    Icons.location_on,
                    color: theme.custom.onMuted,
                    size: 16,
                  ),
                  Expanded(
                    child: Text(
                      establishment.address,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.custom.subtitle,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        IconButton(
          icon: Icon(Icons.chevron_right),
          onPressed: () {
            AutoRouter.of(
              context,
            ).push(EstablishmentRoute(establishment: establishment));
          },
          
        ),
      ],
    );
  }
}
