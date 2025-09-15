import 'package:app/shared/theme/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeEstablishmentList extends StatefulWidget {
  const HomeEstablishmentList({super.key});

  @override
  State<HomeEstablishmentList> createState() => _HomeEstablishmentListState();
}

class _HomeEstablishmentListState extends State<HomeEstablishmentList> {
  final carouselController = CarouselSliderController();

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      spacing: 8,
      children: [
        CarouselSlider(
          carouselController: carouselController,
          options: CarouselOptions(
            height: 180,
            viewportFraction: 1,
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
            return _EstablishmentItem();
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
    );
  }
}

class _EstablishmentItem extends StatelessWidget {
  const _EstablishmentItem();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(12),
        child: Stack(
          children: [
            Image.asset(
              'assets/placeholder/restaurant.jpg',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 80,
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [theme.custom.black, theme.custom.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: Row(
                  spacing: 12,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _EstablishmentName(),
                    Row(
                      spacing: 4,
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 16,
                          color: theme.custom.white,
                        ),
                        Text(
                          '1.4 km',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: theme.custom.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _EstablishmentName extends StatelessWidget {
  const _EstablishmentName();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 6,
          children: [
            SvgPicture.asset(
              'assets/svg/restaurant.svg',
              height: 14,
              width: 14,
              colorFilter: ColorFilter.mode(
                theme.custom.opacityWhite,
                BlendMode.srcIn,
              ),
            ),
            Text(
              'Ресторан',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: theme.custom.opacityWhite,
              ),
            ),
          ],
        ),
        Text(
          '"Блаженство & ты"',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: theme.custom.white,
          ),
        ),
      ],
    );
  }
}
