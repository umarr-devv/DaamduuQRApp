import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key, required this.product});

  final ProductScheme product;

  Future show(BuildContext context) async {
    await CustomScrollableSheet.show(context, this);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomScrollableSheet(
      color: theme.custom.primaryBackground,
      actions: [
        CustomIconButton(icon: Icons.share, onTap: () {}),
        CustomIconButton(icon: Icons.favorite_border_rounded, onTap: () {}),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ProductDetailImage(product: product),
          _ProductDetailTitle(product: product),
          CustomDivider(),
          _ProductDetailInfo(product: product),
          const SizedBox(height: 48),
          _ProductDetailAdd(product: product),
        ],
      ),
    );
  }
}

class _ProductDetailInfo extends StatelessWidget {
  const _ProductDetailInfo({required this.product});

  final ProductScheme product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Column(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (product.description != null)
            CustomTitleText(
              icon: Icons.info_outline,
              title: 'Описание',
              text: product.description!,
            ),
          if (product.composition != null)
            CustomTitleText(
              icon: Icons.list_alt,
              title: 'Состав',
              text: product.composition!,
            ),
        ],
      ),
    );
  }
}

class _ProductDetailTitle extends StatelessWidget {
  const _ProductDetailTitle({required this.product});

  final ProductScheme product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ProductInfo(product: product),
          _ProductPrice(product: product),
        ],
      ),
    );
  }
}

class _ProductInfo extends StatelessWidget {
  const _ProductInfo({required this.product});

  final ProductScheme product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.category.name,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: theme.custom.secondaryForeground,
          ),
        ),
        Text(
          product.name,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: theme.custom.primaryForeground,
          ),
        ),
      ],
    );
  }
}

class _ProductPrice extends StatelessWidget {
  const _ProductPrice({required this.product});

  final ProductScheme product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
      decoration: BoxDecoration(
        color: theme.custom.secondaryBackground,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          if (product.portions.isEmpty)
            Row(
              spacing: 2,
              children: [
                Text(
                  product.price.toStringAsFixed(0),
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: theme.custom.primaryForeground,
                  ),
                ),
                SomSymbol(color: theme.custom.primaryForeground),
              ],
            )
          else if (product.portions.isNotEmpty)
            Row(
              children:
                  List.generate(product.portions.length * 2 - 1, (index) {
                    if (index.isEven) {
                      final index_ = index ~/ 2;
                      return Text(
                        product.portions[index_].price.toStringAsFixed(0),
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: theme.custom.primaryForeground,
                        ),
                      );
                    } else {
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Text(
                          '/',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: theme.custom.secondaryForeground,
                          ),
                        ),
                      );
                    }
                  }) +
                  [SomSymbol(color: theme.custom.primaryForeground)],
            ),
        ],
      ),
    );
  }
}

class _ProductDetailImage extends StatefulWidget {
  const _ProductDetailImage({required this.product});

  final ProductScheme product;

  @override
  State<_ProductDetailImage> createState() => _ProductDetailImageState();
}

class _ProductDetailImageState extends State<_ProductDetailImage> {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.only(
        topLeft: Radius.circular(22),
        topRight: Radius.circular(22),
      ),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 280,
            child: PageView(
              controller: pageController,
              children: widget.product.images
                  .map((i) => CustomImage(imageId: i.id))
                  .toList(),
            ),
          ),
          CustomPageIndicator(
            controller: pageController,
            count: widget.product.images.length,
          ),
        ],
      ),
    );
  }
}

class _ProductDetailAdd extends StatelessWidget {
  const _ProductDetailAdd({required this.product});

  final ProductScheme product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 42,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomTextButton(
        label: 'Добавить',
        icon: 'assets/svg/shopping-basket.svg',
        radius: 12,
        onTap: () {},
        background: theme.custom.primaryColor,
        foreground: theme.custom.white,
      ),
    );
  }
}
