import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';

class ProductLongCard extends StatelessWidget {
  const ProductLongCard({super.key, required this.product});

  final ProductScheme product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: theme.custom.primaryBackground,
        borderRadius: BorderRadius.circular(16),
        boxShadow: theme.custom.boxShadow,
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(16),
            child: Row(
              children: [
                _CardImage(product: product),
                Expanded(child: _CardInfo(product: product)),
              ],
            ),
          ),
          _FavoriteStatus(product: product),
          _CardAction(product: product),
        ],
      ),
    );
  }
}

class _CardAction extends StatelessWidget {
  const _CardAction({required this.product});

  final ProductScheme product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: CustomTextButton(
          icon: Icons.add,
          label: 'Добавить',
          background: theme.custom.primaryForeground,
          foreground: theme.custom.white,
          onTap: () {},
        ),
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
        child: CustomIconButton(
          icon: Icons.favorite_border_rounded,
          shadow: false,
          onTap: () {},
        ),
      ),
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
      padding: const EdgeInsets.only(left: 16, right: 24, top: 12, bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.name,
            style: TextStyle(
              fontSize: 16,
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
          Expanded(child: SizedBox()),
          Row(
            spacing: 4,
            children: [
              Text(
                product.price.toStringAsFixed(1),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: theme.custom.primaryForeground,
                ),
              ),
              SomSymbol(),
            ],
          ),
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
    return CustomImage(
      imageId: product.images.isNotEmpty ? product.images[0].id : null,
      width: 128,
    );
  }
}
