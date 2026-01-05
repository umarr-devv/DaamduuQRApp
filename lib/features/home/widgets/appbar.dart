import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:app/blocs/blocs.dart';
import 'package:app/core/router/router.dart';
import 'package:app/features/home/bloc/home/home_cubit.dart';
import 'package:app/shared/icons/icons.dart';
import 'package:app/shared/shared.dart';
import 'package:app/utils/undefined.dart';
import 'package:auto_route/auto_route.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
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
                  theme: isDarkTheme ? lightTheme : darkTheme,
                  isReversed: !isDarkTheme,
                );
                BlocProvider.of<ThemeCubit>(context).switchTheme();
              },
              icon: Icon(
                isDarkTheme
                    ? FluentIcons.weather_moon_24_filled
                    : FluentIcons.weather_sunny_24_filled,
              ),
            );
          },
        ),
        IconButton(onPressed: () {}, icon: Icon(FluentIcons.alert_24_filled)),
        SizedBox(width: 16),
      ],
      bottom: _AppBarBottom(),
    );
  }
}

class _AppBarBottom extends StatelessWidget implements PreferredSizeWidget {
  const _AppBarBottom();

  @override
  Size get preferredSize => Size.fromHeight(106);

  @override
  Widget build(BuildContext context) {
    return Column(children: [_AppBarSearch(), _AppBarFilter()]);
  }
}

class _AppBarSearch extends StatelessWidget {
  const _AppBarSearch();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(SearchRoute());
      },
      child: Hero(
        tag: 'searchbar',
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomSearchBar(
            hintText: 'Поищите свои любимые сладости',
            enable: false,
          ),
        ),
      ),
    );
  }
}

class _AppBarFilter extends StatefulWidget {
  const _AppBarFilter();

  @override
  State<_AppBarFilter> createState() => _AppBarFilterState();
}

class _AppBarFilterState extends State<_AppBarFilter> {
  void onTap(EstablishmentType? type) {
    BlocProvider.of<HomeCubit>(context).setType(type ?? undefined);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      bloc: BlocProvider.of<HomeCubit>(context),
      builder: (context, state) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Row(
            spacing: 8,
            children:
                [
                  _FilterItem(
                    type: null,
                    onTap: onTap,
                    currentType: state.type,
                  ),
                ] +
                EstablishmentType.values
                    .map(
                      (i) => _FilterItem(
                        type: i,
                        onTap: onTap,
                        currentType: state.type,
                      ),
                    )
                    .toList(),
          ),
        );
      },
    );
  }
}

class _FilterItem extends StatefulWidget {
  const _FilterItem({
    required this.type,
    required this.onTap,
    required this.currentType,
  });

  final EstablishmentType? type;
  final void Function(EstablishmentType?) onTap;
  final EstablishmentType? currentType;

  @override
  State<_FilterItem> createState() => _FilterItemState();
}

class _FilterItemState extends State<_FilterItem> {
  bool get active => widget.currentType == widget.type;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        widget.onTap(widget.type);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 175),
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        decoration: BoxDecoration(
          color: active ? theme.custom.secondary : theme.custom.background,
          borderRadius: BorderRadius.circular(32),
        ),
        child: CustomEstablishmentType(
          type: widget.type,
          color: active ? theme.custom.background : theme.custom.onMuted,
        ),
      ),
    );
  }
}
