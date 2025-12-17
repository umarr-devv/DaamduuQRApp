import 'package:app/shared/theme/theme.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomContactText extends StatelessWidget {
  const CustomContactText({super.key, required this.contact});

  final ContactScheme contact;

  (String, String) getData() {
    switch (contact.type) {
      case ContactType.phone:
        return ('Телефон', 'assets/svg/phone.svg');
      case ContactType.email:
        return ('Эл. почта', 'assets/svg/mail.svg');
      case ContactType.instagram:
        return ('Инстаграм', 'assets/svg/instagram.svg');
      case ContactType.whatsapp:
        return ('Ватсап', 'assets/svg/whatsapp.svg');
      case ContactType.telegram:
        return ('Телеграм', 'assets/svg/telegram.svg');
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
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          spacing: 6,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              icon,
              height: 16,
              width: 16,
              colorFilter: ColorFilter.mode(
                theme.custom.onMuted,
                BlendMode.srcIn,
              ),
            ),
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
