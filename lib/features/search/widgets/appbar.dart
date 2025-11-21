import 'dart:async';

import 'package:app/features/search/bloc/search/search_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  final controller = TextEditingController();
  Timer? debounce;

  SearchCubit get cubit => BlocProvider.of<SearchCubit>(context);

  void onSearchChanged() {
    if (debounce?.isActive ?? false) debounce!.cancel();

    debounce = Timer(const Duration(milliseconds: 500), () {
      cubit.search(controller.text);
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.addListener(onSearchChanged);
    });
  }

  @override
  void dispose() {
    debounce?.cancel();
    controller.dispose();
    super.dispose();
  }

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
                textController: controller,
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
