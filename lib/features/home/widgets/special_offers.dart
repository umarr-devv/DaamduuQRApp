import 'package:app/shared/shared.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tilt/flutter_tilt.dart';

class SpecialOfferData {
  SpecialOfferData({
    required this.label,
    required this.description,
    required this.imageAsset,
    required this.colors,
  });

  final String label;
  final String description;
  final String imageAsset;
  final List<Color> colors;
}

class SpecialOffersCarousel extends StatefulWidget {
  const SpecialOffersCarousel({super.key});

  @override
  State<SpecialOffersCarousel> createState() => _SpecialOffersCarouselState();
}

class _SpecialOffersCarouselState extends State<SpecialOffersCarousel> {
  int currentIndex = 0;

  final offers = [
    SpecialOfferData(
      label: 'Бургер XXL',
      description: 'Новинка лета',
      colors: [Color(0xff6ca651), Color(0xffbbcb2e)],
      imageAsset: 'assets/placeholder/burger.png',
    ),
    SpecialOfferData(
      label: 'Пеперони',
      description: 'Новый вкус',
      colors: [Color(0xffaa2b1d), Color(0xfff5824a)],
      imageAsset: 'assets/placeholder/pizza.png',
    ),
    SpecialOfferData(
      label: 'Капучино',
      description: 'Лучшая цена',
      colors: [Color(0xffff5555), Color(0xffff937e)],
      imageAsset: 'assets/placeholder/cappuccino.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        spacing: 12,
        children: [
          CarouselSlider(
            items: offers
                .map(
                  (offer) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: SpecialOfferCard(offer: offer),
                  ),
                )
                .toList(),
            options: CarouselOptions(
              height: 190,
              viewportFraction: 0.85,
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
          ),
          CustomAnimationIndicator(
            currentIndex: currentIndex,
            length: offers.length,
          ),
        ],
      ),
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({super.key, required this.offer});

  final SpecialOfferData offer;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: offer.colors,
                begin: Alignment.centerLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Transform.translate(
              offset: Offset(42, 32),
              child: Image.asset(
                offer.imageAsset,
                height: 180,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  offer.label,
                  style: TextStyle(
                    color: theme.custom.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  offer.description,
                  style: TextStyle(
                    color: theme.custom.white.withValues(alpha: 0.75),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Expanded(child: SizedBox()),
                TextButton(onPressed: () {}, child: Text('Подробнее')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
