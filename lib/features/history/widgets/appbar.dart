import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/buttons/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HistoryAppBar extends StatelessWidget {
  const HistoryAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(leading: MaybePopButton(), title: _AppBarTitle());
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
          'assets/svg/time_past.svg',
          height: 20,
          width: 20,
          colorFilter: ColorFilter.mode(
            theme.custom.foreground,
            BlendMode.srcIn,
          ),
        ),
        Text('История', style: theme.custom.label),
      ],
    );
  }
}
