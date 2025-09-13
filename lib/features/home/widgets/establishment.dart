import 'package:app/shared/theme/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeEestablishmentList extends StatefulWidget {
  const HomeEestablishmentList({super.key});

  @override
  State<HomeEestablishmentList> createState() => _HomeEestablishmentListState();
}

class _HomeEestablishmentListState extends State<HomeEestablishmentList> {
  final carouselController = CarouselSliderController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Популярные заведения',
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
            carouselController: CarouselSliderController(),
            options: CarouselOptions(
              initialPage: currentIndex,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
              height: 140,
              viewportFraction: 0.65,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              pauseAutoPlayInFiniteScroll: true,
              pauseAutoPlayOnManualNavigate: true,
              pauseAutoPlayOnTouch: true,
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
