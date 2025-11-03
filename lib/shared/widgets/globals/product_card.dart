import 'package:app/blocs/order/order_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/buttons/favorite.dart';
import 'package:app/shared/widgets/components/components.dart';
import 'package:app/shared/widgets/globals/global.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final ProductScheme product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        ProductDetail(product: product).show(context);
      },
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: theme.custom.primaryBackground,
              boxShadow: theme.custom.boxShadow,
            ),
            child: Column(
              children: [
                Expanded(child: _CardImage(product: product)),
                _CardInfo(product: product),
                _AddOrderButton(product: product),
              ],
            ),
          ),
          _FavoriteStatus(),
        ],
      ),
    );
  }
}

class _AddOrderButton extends StatelessWidget {
  const _AddOrderButton({required this.product});

  final ProductScheme product;

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OrderCubit>(context);
    return BlocBuilder<OrderCubit, OrderState>(
      bloc: cubit,
      builder: (context, state) {
        final item = state.getOrderItem(product.id);
        return Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8, right: 8),
            child: CustomCounterButton(
              value: item?.quantity,
              onFirstAdd: () {
                cubit.addItem(product);
              },
              onAdd: () {
                if (item != null) {
                  cubit.setItem(item.copyWith(item.quantity + 1));
                }
              },
              onRemove: () {
                if (item != null) {
                  cubit.setItem(item.copyWith(item.quantity - 1));
                }
              },
              onClear: () {
                if (item != null) {
                  cubit.setItem(item.copyWith(0));
                }
              },
            ),
          ),
        );
      },
    );
  }
}

class _FavoriteStatus extends StatelessWidget {
  const _FavoriteStatus();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(padding: const EdgeInsets.all(8), child: FavoriteButton()),
    );
  }
}

class _CardPrice extends StatelessWidget {
  const _CardPrice({required this.product});

  final ProductScheme product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      spacing: 2,
      children: [
        Text(
          product.price.toStringAsFixed(1),
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: theme.custom.primaryForeground,
          ),
        ),
        SomSymbol(),
      ],
    );
  }
}

class _CardInfo extends StatelessWidget {
  const _CardInfo({required this.product});

  final ProductScheme product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.name,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: theme.custom.primaryForeground,
            ),
          ),
          Text(
            product.category.name,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: theme.custom.secondaryForeground,
            ),
          ),
          const SizedBox(height: 8),
          _CardPrice(product: product),
        ],
      ),
    );
  }
}

class _CardImage extends StatelessWidget {
  const _CardImage({required this.product});

  final ProductScheme product;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
      child: CustomImage(imageId: product.images[0].id),
    );
  }
}
