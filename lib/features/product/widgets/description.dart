import 'package:app/features/product/bloc/product/product_cubit.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      bloc: BlocProvider.of<ProductCubit>(context),
      builder: (context, state) {
        return SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              spacing: 12,
              children: [
                if (state.product.description != null)
                  CustomTitleText(
                    icon: Icons.description,
                    title: 'Описание',
                    text: state.product.description!,
                  ),
                if (state.product.composition != null)
                  CustomTitleText(
                    icon: Icons.menu,
                    title: 'Состав',
                    text: state.product.composition!,
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
