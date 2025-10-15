import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key, required this.textController});

  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      backgroundColor: theme.custom.secondaryBackground,
      automaticallyImplyLeading: false,
      toolbarHeight: 0,
      bottom: _AppBarTitle(textController: textController),
    );
  }
}

class _AppBarTitle extends StatelessWidget implements PreferredSizeWidget {
  const _AppBarTitle({required this.textController});

  final TextEditingController textController;

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
            icon: Icons.arrow_back_ios_new_rounded,
            background: theme.custom.transparent,
            onTap: () {
              AutoRouter.of(context).maybePop();
            },
          ),
          Expanded(
            child: Hero(
              tag: 'searchbar',
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
