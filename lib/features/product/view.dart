import 'package:app/features/product/bloc/product/product_cubit.dart';
import 'package:app/features/product/widgets/widgets.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/components/components.dart';
import 'package:auto_route/auto_route.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key, required this.product});

  final ProductScheme product;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  late final ProductCubit cubit;
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    cubit = ProductCubit(widget.product);
  }

  @override
  void dispose() {
    cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MultiBlocProvider(
      providers: [BlocProvider.value(value: cubit)],
      child: Scaffold(
        backgroundColor: theme.custom.primaryBg,
        body: Stack(
          children: [
            CustomScrollView(
              controller: scrollController,
              slivers: [
                ProductAppBar(scrollController: scrollController),
                ProductTitle(),
                SliverToBoxAdapter(child: CustomDivider()),
                ProductDescription(),
                SliverFillRemaining(),
              ],
            ),
            ToOrderButtons(),
          ],
        ),
      ),
    );
  }
}
