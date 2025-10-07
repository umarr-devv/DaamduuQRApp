import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class StoryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StoryAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(8);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      backgroundColor: theme.custom.black,
      surfaceTintColor: theme.custom.black,
      automaticallyImplyLeading: false,
    );
  }
}
