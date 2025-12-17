import 'package:app/shared/shared.dart';
import 'package:flutter/material.dart';

class MenuEmptyAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MenuEmptyAppbar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(0);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(backgroundColor: theme.custom.muted, elevation: 0);
  }
}
