import 'package:app/shared/icons/icons.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomContactText extends StatelessWidget {
  const CustomContactText({super.key, required this.contact});

  final ContactScheme contact;

  (String, CustomIcons) getData() {
    switch (contact.type) {
      case ContactType.phone:
        return ('Телефон', CustomIcons.phone);
      case ContactType.email:
        return ('Эл. почта', CustomIcons.mail);
      case ContactType.instagram:
        return ('Инстаграм', CustomIcons.instagram);
      case ContactType.whatsapp:
        return ('Ватсап', CustomIcons.whatsapp);
      case ContactType.telegram:
        return ('Телеграм', CustomIcons.telegram);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final (label, icon) = getData();
    return GestureDetector(
      onTap: () {
        launchUrl(Uri.parse(contact.url));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(
          color: theme.custom.muted,
          borderRadius: BorderRadius.circular(64),
        ),
        child: Row(
          spacing: 6,
          mainAxisSize: MainAxisSize.min,
          children: [
            icon(size: 16, color: theme.custom.onMuted),
            Text(
              contact.name ?? label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: theme.custom.onMuted,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
