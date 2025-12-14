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
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: theme.custom.background,
          borderRadius: BorderRadius.circular(16),
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
      ),
    );
  }
}

class _CardAction extends StatelessWidget {
  const _CardAction({required this.product});

  final ProductScheme product;

  @override
  Widget build(BuildContext context) {
    return SizedBox();
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
          Text(product.name, style: theme.custom.labelTextStyle),
          Text(product.category.name, style: theme.custom.labelTextStyle),
          Expanded(child: SizedBox()),
          Row(
            spacing: 4,
            children: [
              Text(
                product.price.toStringAsFixed(1),
                style: theme.custom.labelTextStyle,
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
