import 'package:app/core/router/router.dart';
import 'package:app/features/home/bloc/recommendation/recommendation_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/utils/file.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  RecommendationCubit get cubit =>
      BlocProvider.of<RecommendationCubit>(context);

  @override
  void initState() {
    cubit.update();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<RecommendationCubit, RecommendationState>(
      bloc: cubit,
      builder: (context, state) {
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
              items: state.establishments
                  .map((i) => _EstablishmentItem(i))
                  .toList(),
            ),
            Align(
              alignment: Alignment.center,
              child: AnimatedSmoothIndicator(
                activeIndex: currentIndex,
                count: state.establishments.length,
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
      },
    );
  }
}

class _EstablishmentItem extends StatelessWidget {
  const _EstablishmentItem(this.establishment);

  final EstablishmentScheme establishment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        AutoRouter.of(
          context,
        ).push(EstablishmentRoute(establishment: establishment));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(12),
          child: Stack(
            children: [
              Hero(
                tag: establishment.id,
                child: Builder(
                  builder: (context) {
                    if (establishment.images.isNotEmpty) {
                      return CachedNetworkImage(
                        imageUrl: fileUrl(establishment.images[0].id),
                        width: double.infinity,
                        fit: BoxFit.cover,
                      );
                    } else {
                      return Image.asset(
                        'assets/placeholder/restaurant.jpg',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      );
                    }
                  },
                ),
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
                      _EstablishmentName(establishment),
                      _EstablishmentLocation(establishment),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _EstablishmentLocation extends StatelessWidget {
  const _EstablishmentLocation(this.establishment);

  final EstablishmentScheme establishment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      spacing: 4,
      children: [
        Icon(Icons.location_on, size: 16, color: theme.custom.white),
        Text(
          '1.4 km',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: theme.custom.white,
          ),
        ),
      ],
    );
  }
}

class _EstablishmentName extends StatelessWidget {
  const _EstablishmentName(this.establishment);

  final EstablishmentScheme establishment;

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
          '"${establishment.name}"',
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
