import 'package:app/core/router/router.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';

class EstablishmentCard extends StatelessWidget {
  const EstablishmentCard({super.key, required this.establishment});

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
          color: theme.custom.background,
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
              _Actions(establishment: establishment),
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

class _Actions extends StatelessWidget {
  const _Actions({required this.establishment});

  final EstablishmentScheme establishment;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Hero(
          tag: 'favorite_${establishment.id}',
          child: FavoriteButton(id: establishment.id),
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
      decoration: BoxDecoration(color: theme.custom.background),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            establishment.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.custom.labelTextStyle,
          ),
          Row(
            spacing: 4,
            children: [
              Icon(
                Icons.location_pin,
                size: 16,
                color: theme.custom.onSecondary,
              ),
              Expanded(
                child: Text(
                  establishment.address,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.custom.labelTextStyle,
                ),
              ),
            ],
          ),
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
      tag: 'image_${establishment.id}',
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        child: CustomImage(
          imageId: establishment.images.isNotEmpty
              ? establishment.images[0].id
              : null,
        ),
      ),
    );
  }
}
