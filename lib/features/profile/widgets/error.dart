import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProfileError extends StatelessWidget {
  const ProfileError({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: theme.custom.opacityWarning,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: theme.custom.warning, width: 1),
      ),
      child: Column(children: [_ErrorItem()]),
    );
  }
}

class _ErrorItem extends StatelessWidget {
  const _ErrorItem();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 4,
      children: [
        Icon(
          Icons.warning_amber_rounded,
          size: 24,
          color: theme.custom.warning,
        ),
        Expanded(
          child: Text(
            'Нет разрешения на камеру',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: theme.custom.warning,
            ),
          ),
        ),
        SizedBox(
          height: 32,
          child: CustomTextButton(
            label: 'Исправить',
            padding: const EdgeInsets.symmetric(horizontal: 8),
            shadow: false,
            radius: 8,
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
