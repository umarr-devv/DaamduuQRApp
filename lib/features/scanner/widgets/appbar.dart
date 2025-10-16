import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class ScannerAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ScannerAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(0);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      toolbarHeight: 0,
      automaticallyImplyLeading: false,
      backgroundColor: theme.custom.black,
    );
  }
}
