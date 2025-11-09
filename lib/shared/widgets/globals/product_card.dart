import 'package:app/core/router/router.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/buttons/favorite.dart';
import 'package:app/shared/widgets/components/components.dart';
import 'package:auto_route/auto_route.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final ProductScheme product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(ProductRoute(product: product));
      },
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: theme.custom.primaryBg,
              boxShadow: theme.custom.boxShadow,
            ),
            child: Column(
              children: [
                Expanded(child: _CardImage(product: product)),
                _CardInfo(product: product),
              ],
            ),
          ),
          _FavoriteStatus(product: product),
        ],
      ),
    );
  }
}

class _FavoriteStatus extends StatelessWidget {
  const _FavoriteStatus({required this.product});

  final ProductScheme product;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Hero(
          tag: 'favorite_${product.id}',
          child: FavoriteButton(id: product.id),
        ),
      ),
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
        Text(product.price.toStringAsFixed(1), style: theme.custom.labelLarge),
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
          Text(product.name, style: theme.custom.labelMedium),
          Text(product.category.name, style: theme.custom.labelSmallAlt),
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
    return Hero(
      tag: 'image_${product.id}',
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        child: CustomImage(imageId: product.images[0].id),
      ),
    );
  }
}
