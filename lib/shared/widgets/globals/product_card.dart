import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/components/components.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final ProductScheme product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
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
            ],
          ),
        ),
        _FavoriteStatus(),
      ],
    );
  }
}

class _FavoriteStatus extends StatelessWidget {
  const _FavoriteStatus();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: CustomIconButton(
          icon: Icons.favorite_border_rounded,
          size: 20,
          onTap: () {},
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
