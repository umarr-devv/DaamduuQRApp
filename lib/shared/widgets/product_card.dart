import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final ProductScheme product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(16),
      child: GestureDetector(
        onTap: () {
          ProductDetail(product: product).show(context);
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(color: theme.custom.primaryBackground),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: CustomImage(
                      imageId: product.images.isNotEmpty
                          ? product.images[0].id
                          : null,
                    ),
                  ),
                  _ProductCardInfo(product: product),
                ],
              ),
            ),
            _FoodFavoriteButton(),
            _ProductPrice(product: product),
            _FoodCardAddButton(),
          ],
        ),
      ),
    );
  }
}

class _FoodFavoriteButton extends StatefulWidget {
  const _FoodFavoriteButton();

  @override
  State<_FoodFavoriteButton> createState() => _FoodFavoriteButtonState();
}

class _FoodFavoriteButtonState extends State<_FoodFavoriteButton> {
  bool favorite = false;
  double scale = 1;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        height: 36,
        width: 36,
        margin: const EdgeInsets.all(6),
        child: IconButton(
          onPressed: () async {
            setState(() {
              scale = 0.8;
            });
            await Future.delayed(Duration(milliseconds: 125));
            favorite = !favorite;
            setState(() {
              scale = 1;
            });
          },
          style: IconButton.styleFrom(
            backgroundColor: theme.custom.primaryBackground,
          ),
          icon: AnimatedScale(
            scale: scale,
            duration: const Duration(milliseconds: 125),
            child: Icon(
              favorite ? Icons.favorite : Icons.favorite_border_rounded,
              size: 20,
              color: favorite
                  ? theme.custom.primaryColor
                  : theme.custom.secondaryForeground,
            ),
          ),
        ),
      ),
    );
  }
}

class _ProductPrice extends StatelessWidget {
  const _ProductPrice({required this.product});

  final ProductScheme product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        margin: const EdgeInsets.only(bottom: 72, right: 8),
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
        decoration: BoxDecoration(
          color: theme.custom.primaryBackground,
          borderRadius: BorderRadius.circular(8),
        ),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: product.price.toStringAsFixed(0),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: theme.custom.primaryForeground,
                ),
              ),
              WidgetSpan(child: SizedBox(width: 3)),
              TextSpan(
                text: 'c',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: theme.custom.secondaryForeground,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                  decorationColor: theme.custom.secondaryForeground,
                  decorationThickness: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FoodCardAddButton extends StatelessWidget {
  const _FoodCardAddButton();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        height: 32,
        width: 32,
        margin: const EdgeInsets.all(8),
        child: IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
            backgroundColor: theme.custom.primaryForeground,
            shape: CircleBorder(),
            padding: const EdgeInsets.all(0),
          ),
          padding: const EdgeInsets.all(0),
          icon: Icon(Icons.add, size: 20, color: theme.custom.white),
        ),
      ),
    );
  }
}

class _ProductCardInfo extends StatelessWidget {
  const _ProductCardInfo({required this.product});

  final ProductScheme product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 64,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.category.name,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: theme.custom.secondaryForeground,
                ),
              ),
              Text(
                product.name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: theme.custom.primaryForeground,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
