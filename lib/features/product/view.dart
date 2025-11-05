import 'package:app/features/product/widgets/appbar.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key, required this.product});

  final ProductScheme product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.custom.primaryBackground,
      body: CustomScrollView(slivers: [ProductAppBar()]),
    );
  }
}
