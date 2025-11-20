import 'package:app/core/router/router.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/components/components.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class FavoriteAppBar extends StatefulWidget {
  const FavoriteAppBar({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  State<FavoriteAppBar> createState() => _FavoriteAppBarState();
}

class _FavoriteAppBarState extends State<FavoriteAppBar> {
  final textController = TextEditingController();

  bool isCollapsed = false;

  void scrollListener() {
    if (widget.scrollController.offset > 12) {
      if (!isCollapsed) {
        setState(() {
          isCollapsed = true;
        });
      }
    } else if (widget.scrollController.offset < 12) {
      if (isCollapsed) {
        setState(() {
          isCollapsed = false;
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(scrollListener);
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      backgroundColor: isCollapsed
          ? theme.custom.primaryBg
          : theme.custom.secondaryBg,
      automaticallyImplyLeading: false,
      pinned: true,
      shadowColor: theme.custom.highShadowColor,
      title: Text('Мои Избранные'),
      actions: [
        CustomIconButton(
          icon: 'assets/svg/search.svg',
          radius: 12,
          shadow: !isCollapsed,
          onTap: () {
            AutoRouter.of(context).push(SearchRoute());
          },
        ),
        SizedBox(width: 16),
      ],
    );
  }
}
