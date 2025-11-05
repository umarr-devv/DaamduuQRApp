import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomPageIndicator extends StatelessWidget {
  const CustomPageIndicator({
    super.key,
    required this.controller,
    required this.count,
  });

  final PageController controller;
  final int count;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      alignment: Alignment.center,
      child: SmoothPageIndicator(
        controller: controller,
        count: count,
        effect: ExpandingDotsEffect(
          expansionFactor: 2.5,
          dotHeight: 8,
          dotWidth: 8,
          dotColor: theme.custom.opacityFg,
          activeDotColor: theme.custom.primaryFg,
        ),
      ),
    );
  }
}

class CustomAnimationIndicator extends StatelessWidget {
  const CustomAnimationIndicator({
    super.key,
    required this.currentIndex,
    required this.length,
    this.color,
  });

  final int currentIndex;
  final int length;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedSmoothIndicator(
      activeIndex: currentIndex,
      count: length,
      effect: ExpandingDotsEffect(
        expansionFactor: 2.5,
        dotHeight: 8,
        dotWidth: 8,
        dotColor: theme.custom.opacityFg,
        activeDotColor: color ?? theme.custom.primaryFg,
      ),
    );
  }
}
