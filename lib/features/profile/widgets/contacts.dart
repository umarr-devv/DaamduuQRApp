import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/components/icon_button.dart';
import 'package:flutter/material.dart';

class _ContactData {
  _ContactData({required this.icon, required this.label, required this.url});

  final String icon;
  final String label;
  final String url;
}

class ProfileContacts extends StatefulWidget {
  const ProfileContacts({super.key});

  @override
  State<ProfileContacts> createState() => _ProfileContactsState();
}

class _ProfileContactsState extends State<ProfileContacts> {
  final contacts = [
    _ContactData(icon: 'assets/svg/phone.svg', label: 'Номер', url: ''),
    _ContactData(icon: 'assets/svg/mail.svg', label: 'Эл. почта', url: ''),
    _ContactData(icon: 'assets/svg/whatsapp.svg', label: 'WhatsApp', url: ''),
    _ContactData(icon: 'assets/svg/telegram.svg', label: 'Telegram', url: ''),
    _ContactData(icon: 'assets/svg/instagram.svg', label: 'Instagram', url: ''),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        // color: theme.custom.primaryBackground,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        spacing: 12,
        mainAxisAlignment: MainAxisAlignment.center,
        children: contacts
            .map(
              (i) => CustomIconButton(
                icon: i.icon,
                radius: 12,
                foreground: theme.custom.onSecondary,
                onTap: () {},
              ),
            )
            .toList(),
      ),
    );
  }
}
