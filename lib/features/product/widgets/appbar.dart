import 'package:app/shared/widgets/buttons/buttons.dart';
import 'package:flutter/material.dart';

class ProductAppBar extends StatelessWidget {
  const ProductAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: MaybePopButton(),
    );
  }
}