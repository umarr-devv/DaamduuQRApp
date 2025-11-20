import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      backgroundColor: theme.custom.secondaryBg,
      automaticallyImplyLeading: false,
      toolbarHeight: 0,
      bottom: _AppBarTitle(),
    );
  }
}

class _AppBarTitle extends StatefulWidget implements PreferredSizeWidget {
  const _AppBarTitle();

  @override
  Size get preferredSize => Size.fromHeight(64);

  @override
  State<_AppBarTitle> createState() => _AppBarTitleState();
}

class _AppBarTitleState extends State<_AppBarTitle> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 16, top: 8, bottom: 8),
      child: Row(
        spacing: 8,
        children: [
          MaybePopButton(shadow: false, background: theme.custom.transparent),
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
