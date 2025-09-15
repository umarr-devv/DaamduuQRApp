import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class EstablishmentAppBar extends StatelessWidget {
  const EstablishmentAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      backgroundColor: theme.custom.white,
      expandedHeight: 220,
      leading: Padding(
        padding: const EdgeInsets.all(8),
        child: CustomTitleButton(
          onTap: () {
            AutoRouter.of(context).maybePop();
          },
          icon: Icons.arrow_back_ios_new_rounded,
        ),
      ),
      actions: [
        CustomTitleButton(
          onTap: () {},
          icon: Icons.favorite,
          color: theme.custom.primaryColor,
        ),
        const SizedBox(width: 4),
      ],
      flexibleSpace: FlexibleSpaceBar(background: _BackgroundImages()),
    );
  }
}

class _BackgroundImages extends StatefulWidget {
  const _BackgroundImages();

  @override
  State<_BackgroundImages> createState() => _BackgroundImagesState();
}

class _BackgroundImagesState extends State<_BackgroundImages> {
  final pageContoller = PageController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Hero(
      tag: 'establishment-image',
      child: SizedBox(
        height: 220,
        child: Stack(
          children: [
            PageView(
              controller: pageContoller,
              children: List.generate(
                4,
                (index) => Image.asset(
                  'assets/placeholder/restaurant.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [theme.custom.black, theme.custom.transparent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                  color: theme.custom.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: SmoothPageIndicator(
                  controller: pageContoller,
                  count: 4,
                  effect: ExpandingDotsEffect(
                    expansionFactor: 2.5,
                    dotHeight: 8,
                    dotWidth: 8,
                    dotColor: theme.custom.opacityForeground,
                    activeDotColor: theme.custom.primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
