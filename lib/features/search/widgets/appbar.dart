import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key, required this.textController, this.uniqueId});

  final TextEditingController textController;
  final String? uniqueId;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      backgroundColor: theme.custom.secondaryBg,
      automaticallyImplyLeading: false,
      toolbarHeight: 0,
      bottom: _AppBarTitle(textController: textController, uniqueId: uniqueId),
    );
  }
}

class _AppBarTitle extends StatelessWidget implements PreferredSizeWidget {
  const _AppBarTitle({required this.textController, this.uniqueId});

  final TextEditingController textController;
  final String? uniqueId;

  @override
  Size get preferredSize => Size.fromHeight(64);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 16, top: 8, bottom: 8),
      child: Row(
        spacing: 8,
        children: [
          CustomIconButton(
            icon: Icons.arrow_back,
            background: theme.custom.transparent,
            shadow: false,
            onTap: () {
              AutoRouter.of(context).maybePop();
            },
          ),
          Expanded(
            child: Hero(
              tag: uniqueId ?? 'searchbar',
              child: CustomSearchBar(
                textController: textController,
                autofocus: true,
                hintText: 'Блюда, закуски, напитки...',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
