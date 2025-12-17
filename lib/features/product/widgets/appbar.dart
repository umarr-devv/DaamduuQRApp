import 'package:app/features/product/bloc/product/product_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductAppBar extends StatefulWidget {
  const ProductAppBar({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  State<ProductAppBar> createState() => _ProductAppBarState();
}

class _ProductAppBarState extends State<ProductAppBar> {
  double expandedHeight = 280;
  double toolbarHeight = 64;

  bool isCollapsed = false;

  Future scrollListener() async {
    if (widget.scrollController.offset > expandedHeight - toolbarHeight) {
      if (!isCollapsed) {
        await Future.delayed(Duration(milliseconds: 125));
        setState(() {
          isCollapsed = true;
        });
      }
    } else if (widget.scrollController.offset <
        expandedHeight - toolbarHeight) {
      if (isCollapsed) {
        setState(() {
          isCollapsed = false;
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<ProductCubit, ProductState>(
      bloc: BlocProvider.of<ProductCubit>(context),
      builder: (context, state) {
        return SliverAppBar(
          backgroundColor: theme.custom.background,
          toolbarHeight: toolbarHeight,
          expandedHeight: expandedHeight,
          elevation: 4,
          centerTitle: false,
          shadowColor: theme.custom.highShadow,
          leading: MaybePopButton(shadow: !isCollapsed),
          title: _AppBarTitle(show: isCollapsed, product: state.product),
          actions: [
            _TitleActions(isCollapsed: isCollapsed, product: state.product),
          ],
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: _BackgroundImages(state.product),
          ),
          systemOverlayStyle: isCollapsed
              ? SystemUiOverlayStyle.dark
              : SystemUiOverlayStyle.light,
        );
      },
    );
  }
}

class _TitleActions extends StatelessWidget {
  const _TitleActions({required this.isCollapsed, required this.product});

  final bool isCollapsed;
  final ProductScheme product;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Hero(
          tag: 'favorite_${product.id}',
          child: FavoriteButton(shadow: !isCollapsed, id: product.id),
        ),
        ShareButton(shadow: !isCollapsed),
        const SizedBox(),
      ],
    );
  }
}

class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle({required this.product, required this.show});

  final bool show;
  final ProductScheme product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Opacity(
      opacity: show ? 1 : 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.category.name,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: theme.custom.onMuted,
            ),
          ),
          Text(
            product.name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: theme.custom.foreground,
            ),
          ),
        ],
      ),
    );
  }
}

class _BackgroundImages extends StatefulWidget {
  const _BackgroundImages(this.product);

  final ProductScheme product;

  @override
  State<_BackgroundImages> createState() => _BackgroundImagesState();
}

class _BackgroundImagesState extends State<_BackgroundImages> {
  final pageContoller = PageController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);
    return Hero(
      tag: 'image_${widget.product.id}',
      child: SizedBox(
        height: 220,
        child: Stack(
          children: [
            PageView(
              controller: pageContoller,
              children: widget.product.images.map((i) {
                return CustomImage(imageId: i.id, fit: BoxFit.cover);
              }).toList(),
            ),
            Container(
              height: mediaQuery.padding.top + 12,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    theme.custom.foreground.withValues(alpha: 0.1),
                    theme.custom.transparent,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 28,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: theme.custom.background,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: CustomPageIndicator(
                  controller: pageContoller,
                  count: widget.product.images.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
