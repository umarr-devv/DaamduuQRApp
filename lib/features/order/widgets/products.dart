import 'package:app/blocs/blocs.dart';
import 'package:app/core/router/router.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderProductsList extends StatelessWidget {
  const OrderProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OrderCubit>(context);
    return BlocBuilder<OrderCubit, OrderState>(
      bloc: cubit,
      builder: (context, state) {
        return SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverList.separated(
            itemBuilder: (context, index) {
              return _OrderItemCard(item: state.items[index]);
            },
            separatorBuilder: (context, index) => SizedBox(height: 12),
            itemCount: state.items.length,
          ),
        );
      },
    );
  }
}

class _OrderItemCard extends StatelessWidget {
  const _OrderItemCard({required this.item});

  final OrderItem item;

  ProductScheme get product => item.product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(ProductRoute(product: product));
      },
      child: Row(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _CardImage(product: product),
          Expanded(child: _CardInfo(item: item)),
          _CardActions(item: item),
        ],
      ),
    );
  }
}

class _CardActions extends StatelessWidget {
  const _CardActions({required this.item});

  final OrderItem item;

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OrderCubit>(context);
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {
            cubit.setItem(item.copyWith(0));
          },
          icon: Icon(Icons.delete),
        ),
      ],
    );
  }
}

class _CardInfo extends StatelessWidget {
  const _CardInfo({required this.item});

  final OrderItem item;

  ProductScheme get product => item.product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cubit = BlocProvider.of<OrderCubit>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: theme.custom.foreground,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              product.price.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: theme.custom.onMuted,
              ),
            ),
            SomSymbol(size: 12),
          ],
        ),
        SizedBox(height: 4),
        CustomCounterButton(
          value: item.quantity,
          iconSize: 16,
          removeColor: theme.custom.background,
          onFirstAdd: () {},
          onAdd: () {
            cubit.setItem(item.copyWith(item.quantity + 1));
          },
          onRemove: () {
            cubit.setItem(item.copyWith(item.quantity - 1));
          },
        ),
      ],
    );
  }
}

class _CardImage extends StatelessWidget {
  const _CardImage({required this.product});

  final ProductScheme product;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(16),
      child: CustomImage(
        imageId: product.images.isNotEmpty ? product.images[0].id : null,
        height: 80,
        width: 80,
      ),
    );
  }
}
