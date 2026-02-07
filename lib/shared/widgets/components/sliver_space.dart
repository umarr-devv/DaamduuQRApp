import 'package:flutter/material.dart';

class SliverSpace extends StatelessWidget {
  const SliverSpace({super.key, this.height = 24 });

  final double height;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: height,
      ),
    );
  }
}