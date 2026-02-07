import 'package:app/core/router/router.dart';
import 'package:app/shared/shared.dart';
import 'package:auto_route/auto_route.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class EstablishmentCard extends StatelessWidget {
  const EstablishmentCard({super.key, required this.establishment});

  final EstablishmentScheme establishment;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(
          context,
        ).push(EstablishmentRoute(establishment: establishment));
      },
      child: Card(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(child: _Image(establishment)),
                _Info(establishment),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: FavoriteButton(id: establishment.id),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image(this.establishment);

  final EstablishmentScheme establishment;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: CustomImage(
        imageId: establishment.images.isNotEmpty
            ? establishment.images[0].id
            : null,
      ),
    );
  }
}

class _Info extends StatelessWidget {
  const _Info(this.establishment);

  final EstablishmentScheme establishment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Align(
      alignment: AlignmentGeometry.bottomCenter,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              establishment.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: theme.custom.foreground,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              spacing: 4,
              children: [
                RatingBarIndicator(
                  rating: 4.4,
                  unratedColor: theme.custom.foreground.withValues(alpha: 0.15),
                  itemBuilder: (context, index) => Icon(
                    FluentIcons.star_24_filled,
                    color: theme.custom.gold,
                  ),
                  itemCount: 5,
                  itemSize: 16,
                  direction: Axis.horizontal,
                ),
                Text(
                  '4.5',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: theme.custom.foreground,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
