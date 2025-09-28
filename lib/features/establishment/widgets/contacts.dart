import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/contact.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';

class EstablishmentContacts extends StatelessWidget {
  const EstablishmentContacts({super.key, required this.establishment});

  final EstablishmentScheme establishment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
      child: Column(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            color: theme.custom.opacityForeground,
            endIndent: 16,
            indent: 16,
          ),
          Text(
            'Контакты',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: theme.custom.secondaryForeground,
            ),
          ),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: establishment.contacts
                .map((i) => CustomContactText(contact: i))
                .toList(),
          ),
        ],
      ),
    );
  }
}
