import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavoriteEmpty extends StatelessWidget {
  const FavoriteEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      alignment: Alignment.center,
      child: Column(
        spacing: 12,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            'assets/svg/face-sad-sweat.svg',
            height: 128,
            width: 128,
            colorFilter: ColorFilter.mode(
              theme.custom.secondaryForeground,
              BlendMode.srcIn,
            ),
          ),
          Text(
            'У вас пока нет избранных\n заведений и позиций',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: theme.custom.secondaryForeground,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: CustomActionButton(
              label: 'В главное',
              icon: Icons.chevron_left_rounded,
              onTap: () {
                AutoTabsRouter.of(context).setActiveIndex(0);
              },
            ),
          ),
        ],
      ),
    );
  }
}
