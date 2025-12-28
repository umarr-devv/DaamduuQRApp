import 'package:app/features/promotions/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PromotionsScreen extends StatelessWidget {
  const PromotionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        PromotionsAppBar(),
        SliverFillRemaining(child: PromotionPlaceholder()),
      ],
    );
  }
}
