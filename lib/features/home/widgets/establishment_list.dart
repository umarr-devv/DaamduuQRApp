import 'package:app/core/router/router.dart';
import 'package:app/features/home/bloc/home/home_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/image.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeEstablishmentCarousel extends StatefulWidget {
  const HomeEstablishmentCarousel({super.key});

  @override
  State<HomeEstablishmentCarousel> createState() =>
      _HomeEstablishmentCarouselState();
}

class _HomeEstablishmentCarouselState extends State<HomeEstablishmentCarousel> {
  final carouselController = CarouselSliderController();
  int currentIndex = 0;

  HomeCubit get cubit => BlocProvider.of<HomeCubit>(context);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<HomeCubit, HomeState>(
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
              child: CustomAnimationIndicator(
                currentIndex: currentIndex,
                length: state.establishments.length,
                color: theme.custom.primaryColor,
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
                child: CustomImage(imageId: establishment.images[0].id),
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
        CustomEstablishmentType(
          type: establishment.type,
          color: theme.custom.opacityWhite,
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
