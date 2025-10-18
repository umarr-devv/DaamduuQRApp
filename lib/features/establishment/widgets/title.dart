import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:app/utils/geo.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';

class EstablishmentTitle extends StatelessWidget {
  const EstablishmentTitle({super.key, required this.establishment});

  final EstablishmentScheme establishment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 12),
      child: Row(
        spacing: 12,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              spacing: 2,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  establishment.name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: theme.custom.primaryForeground,
                  ),
                ),
                Text(
                  establishment.address,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: theme.custom.secondaryForeground,
                  ),
                ),
              ],
            ),
          ),
          if (establishment.latitude != null && establishment.longitude != null)
            CustomIconButton(
              icon: Icons.directions,
              onTap: () async {
                await openGeo(
                  latitude: establishment.latitude!.toDouble(),
                  longitude: establishment.longitude!.toDouble(),
                );
              },
              background: theme.custom.primaryColor,
              foreground: theme.custom.white,
            ),
        ],
      ),
    );
  }
}
