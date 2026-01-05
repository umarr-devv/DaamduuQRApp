import 'package:app/core/router/router.dart';
import 'package:app/shared/dialogs/dialogs.dart';
import 'package:app/shared/icons/icons.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';

class _ActionButtonData {
  _ActionButtonData({
    required this.icon,
    required this.label,
    this.description,
    this.onTap,
  });

  final CustomIcons icon;
  final String label;
  final String? description;
  final void Function()? onTap;
}

class ProfileActions extends StatefulWidget {
  const ProfileActions({super.key});

  @override
  State<ProfileActions> createState() => _ProfileActionsState();
}

class _ProfileActionsState extends State<ProfileActions> {
  List<_ActionButtonData> get buttons => [
    _ActionButtonData(
      icon: CustomIcons.map_marker,
      description: 'Определяется автоматически',
      onTap: () {
        CitySelectDialog().show(context);
      },
      label: 'Мой город',
    ),
    _ActionButtonData(
      icon: CustomIcons.time_past,
      label: 'История',
      onTap: () {
        AutoRouter.of(context).push(HistoryRoute());
      },
    ),
    _ActionButtonData(
      icon: CustomIcons.shield_check,
      label: 'Условия соглашения',
      onTap: () {
        AppRulesDialog().show(context);
      },
    ),
    _ActionButtonData(
      icon: CustomIcons.interrogation,
      label: 'Обратная связь',
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => TalkerScreen(talker: GetIt.I<Talker>()),
          ),
        );
      },
    ),
    _ActionButtonData(
      icon:  CustomIcons.comment_info,
      label: 'О приложении',
      onTap: () {
        AboutAppDialog().show(context);
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: theme.custom.background,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: buttons.map((i) => _ActionButton(i)).toList(),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton(this.button);

  final _ActionButtonData button;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: button.onTap,
      child: Row(
        spacing: 8,
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: theme.custom.muted,
              borderRadius: BorderRadius.circular(32),
            ),
            child: button.icon(color: theme.custom.onMuted) 
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(button.label, style: theme.custom.label),
              if (button.description != null)
                Text(button.description!, style: theme.custom.subtitle),
            ],
          ),
        ],
      ),
    );
  }
}
