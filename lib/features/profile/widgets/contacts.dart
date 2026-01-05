import 'package:app/shared/icons/icons.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class _ContactData {
  _ContactData({required this.icon, required this.label, required this.url});

  final CustomIcons icon;
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
    _ContactData(icon: CustomIcons.phone, label: 'Номер', url: ''),
    _ContactData(icon: CustomIcons.mail, label: 'Эл. почта', url: ''),
    _ContactData(icon: CustomIcons.whatsapp, label: 'WhatsApp', url: ''),
    _ContactData(icon: CustomIcons.telegram, label: 'Telegram', url: ''),
    _ContactData(icon: CustomIcons.instagram, label: 'Instagram', url: ''),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        // color: theme.custom.onMutedBackground,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: contacts
            .map(
              (i) => IconButton(
                icon: i.icon(color: theme.custom.onMuted),
                onPressed: () {},
              ),
            )
            .toList(),
      ),
    );
  }
}
