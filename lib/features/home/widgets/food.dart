import 'package:app/shared/theme/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeFoodList extends StatefulWidget {
  const HomeFoodList({super.key});

  @override
  State<HomeFoodList> createState() => _HomeFoodListState();
}

class _HomeFoodListState extends State<HomeFoodList> {
  final carouselController = CarouselSliderController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Топовые позиции',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: theme.custom.primaryForeground,
                  ),
                ),
                Icon(
                  Icons.chevron_right_rounded,
                  color: theme.custom.secondaryForeground,
                ),
              ],
            ),
          ),
          CarouselSlider(
            carouselController: carouselController,
            options: CarouselOptions(
              height: 96,
              viewportFraction: 0.35,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              pauseAutoPlayInFiniteScroll: true,
              pauseAutoPlayOnManualNavigate: true,
              pauseAutoPlayOnTouch: true,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            items: List.generate(12, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  color: theme.custom.primaryBackground,
                  borderRadius: BorderRadius.circular(12),
                ),
              );
            }),
          ),
          Align(
            alignment: Alignment.center,
            child: AnimatedSmoothIndicator(
              activeIndex: currentIndex,
              count: 12,
              effect: ExpandingDotsEffect(
                expansionFactor: 2.5,
                dotHeight: 8,
                dotWidth: 8,
                dotColor: theme.custom.opacityForeground,
                activeDotColor: theme.custom.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
