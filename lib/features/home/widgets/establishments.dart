import 'package:app/core/router/router.dart';
import 'package:app/features/home/bloc/home/home_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeEstablishments extends StatefulWidget {
  const HomeEstablishments({super.key});

  @override
  State<HomeEstablishments> createState() => _HomeEstablishmentsState();
}

class _HomeEstablishmentsState extends State<HomeEstablishments> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      bloc: BlocProvider.of<HomeCubit>(context),
      builder: (context, state) {
        return Column(
          spacing: 8,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 240,
                viewportFraction: 0.75,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                pauseAutoPlayInFiniteScroll: true,
                pauseAutoPlayOnManualNavigate: true,
                pauseAutoPlayOnTouch: true,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              items: state.establishments
                  .map((i) => _EstablishmentCard(establishment: i))
                  .toList(),
            ),
            CustomAnimationIndicator(
              currentIndex: currentIndex,
              length: state.establishments.length,
            ),
          ],
        );
      },
    );
  }
}

class _EstablishmentCard extends StatelessWidget {
  const _EstablishmentCard({required this.establishment});

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
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        decoration: BoxDecoration(
          boxShadow: theme.custom.boxShadow,
          borderRadius: BorderRadius.circular(16),
        ),
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(16),
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(child: _CardImage(establishment: establishment)),
                  _CardInfo(establishment: establishment),
                ],
              ),
              _FavoriteStatus(),
              _AvailableStatus(),
            ],
          ),
        ),
      ),
    );
  }
}

class _AvailableStatus extends StatelessWidget {
  const _AvailableStatus();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _FavoriteStatus extends StatelessWidget {
  const _FavoriteStatus();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: CustomIconButton(
          icon: Icons.favorite_border_rounded,
          size: 20,
          onTap: () {},
        ),
      ),
    );
  }
}

class _CardInfo extends StatelessWidget {
  const _CardInfo({required this.establishment});

  final EstablishmentScheme establishment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(color: theme.custom.primaryBackground),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            establishment.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: theme.custom.primaryForeground,
            ),
          ),
          Row(
            spacing: 4,
            children: [
              Icon(
                Icons.location_pin,
                size: 16,
                color: theme.custom.secondaryForeground,
              ),
              Expanded(
                child: Text(
                  establishment.address,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: theme.custom.secondaryForeground,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          CustomRatingIndicator(value: 4.4),
        ],
      ),
    );
  }
}

class _CardImage extends StatelessWidget {
  const _CardImage({required this.establishment});

  final EstablishmentScheme establishment;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: establishment.id,
      child: CustomImage(
        imageId: establishment.images.isNotEmpty
            ? establishment.images[0].id
            : null,
      ),
    );
  }
}
