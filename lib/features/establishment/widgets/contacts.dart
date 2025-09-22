import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

// Only for DEBUG
class ContactData {
  ContactData({required this.icon, required this.label, required this.url});
  final String icon;
  final String label;
  final String url;
}

class EstablishmentContacts extends StatefulWidget {
  const EstablishmentContacts({super.key});

  @override
  State<EstablishmentContacts> createState() => _EstablishmentContactsState();
}

class _EstablishmentContactsState extends State<EstablishmentContacts> {
  final contacts = [
    ContactData(
      label: '+996 222 980 990',
      icon: 'assets/svg/phone.svg',
      url: 'tel:+996222980990',
    ),
    ContactData(
      label: '@reatuarant',
      icon: 'assets/svg/whatsapp.svg',
      url: 'https://whatsapp.com',
    ),
    ContactData(
      label: '@reatuarant',
      icon: 'assets/svg/telegram.svg',
      url: 'https://telegram.com',
    ),
    ContactData(
      label: '@reatuarant',
      icon: 'assets/svg/instagram.svg',
      url: 'https://instagram.com',
    ),
    ContactData(
      label: 'umarr.devv@outlook.com',
      icon: 'assets/svg/mail.svg',
      url: 'mailto:umarr.devv@outlook.com',
    ),
  ];

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
            children: contacts.map((i) => _ContactInfo(contact: i)).toList(),
          ),
        ],
      ),
    );
  }
}

class _ContactInfo extends StatelessWidget {
  const _ContactInfo({required this.contact});

  final ContactData contact;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        launchUrl(Uri.parse(contact.url));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(
          color: theme.custom.secondaryBackground,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          spacing: 6,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              contact.icon,
              height: 16,
              width: 16,
              colorFilter: ColorFilter.mode(
                theme.custom.primaryForeground,
                BlendMode.srcIn,
              ),
            ),
            Text(
              contact.label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: theme.custom.primaryForeground,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
