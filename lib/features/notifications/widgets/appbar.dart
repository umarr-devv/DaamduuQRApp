import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/buttons/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationAppBar extends StatelessWidget {
  const NotificationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: UnconstrainedBox(child: MaybePopButton(shadow: false)),
      title: _AppBarTitle(),
    );
  }
}

class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 8,
      children: [
        SvgPicture.asset(
          'assets/svg/bell.svg',
          height: 20,
          width: 20,
          colorFilter: ColorFilter.mode(
            theme.custom.primaryForeground,
            BlendMode.srcIn,
          ),
        ),
        Text(
          'Уведомления',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: theme.custom.primaryForeground,
          ),
        ),
      ],
    );
  }
}
