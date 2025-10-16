import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.custom.primaryBackground,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        spacing: 12,
        children: [
          _UserAvatar(),
          Expanded(child: _UserInfo()),
          CustomIconButton(
            icon: Icons.chevron_right_rounded,
            shadow: false,
            background: theme.custom.transparent,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class _UserAvatar extends StatelessWidget {
  const _UserAvatar();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Shimmer.fromColors(
      baseColor: theme.custom.shimmerBase,
      highlightColor: theme.custom.shimmerHighlight,
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(64),
        child: SizedBox(height: 64, width: 64, child: CustomImage()),
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      spacing: 4,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Умарбеков Мухаммадали',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: theme.custom.primaryForeground,
          ),
        ),
        Text(
          '+996 222 98 09 90',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: theme.custom.secondaryForeground,
          ),
        ),
      ],
    );
  }
}
