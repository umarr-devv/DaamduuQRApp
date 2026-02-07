import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:app/blocs/blocs.dart';
import 'package:app/core/router/router.dart';
import 'package:app/shared/icons/icons.dart';
import 'package:app/shared/shared.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      backgroundColor: theme.custom.muted,
      title: Row(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomIcons.icon_bg(size: 32),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Daamduu',
                  style: TextStyle(
                    fontFamily: theme.custom.comfortaa,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: theme.custom.foreground,
                  ),
                ),
                TextSpan(
                  text: 'QR',
                  style: TextStyle(
                    fontFamily: theme.custom.comfortaa,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: theme.custom.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      actions: [
        ThemeSwitcher(
          builder: (context) {
            final isDarkTheme = theme.brightness == Brightness.dark;
            return IconButton(
              onPressed: () {
                ThemeSwitcher.of(context).changeTheme(
                  theme: isDarkTheme
                      ? CustomThemeData(brightness: Brightness.light).toTheme()
                      : CustomThemeData(brightness: Brightness.dark).toTheme(),
                  isReversed: !isDarkTheme,
                );
                BlocProvider.of<ThemeCubit>(context).switchTheme();
              },
              icon: Icon(
                isDarkTheme
                    ? FluentIcons.weather_moon_24_regular
                    : FluentIcons.weather_sunny_24_regular,
              ),
            );
          },
        ),
        IconButton(onPressed: () {}, icon: Icon(FluentIcons.alert_24_regular)),
        SizedBox(width: 16),
      ],
      bottom: _AppBarBottom(),
    );
  }
}

class _AppBarBottom extends StatelessWidget implements PreferredSizeWidget {
  const _AppBarBottom();

  @override
  Size get preferredSize => Size.fromHeight(72);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(SearchRoute());
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: TextField(
          enabled: false,
          decoration: InputDecoration(
            prefixIcon: Icon(FluentIcons.search_24_regular, size: 28),
            hintText: 'Поиск вкусностей',
          ),
        ),
      ),
    );
  }
}
