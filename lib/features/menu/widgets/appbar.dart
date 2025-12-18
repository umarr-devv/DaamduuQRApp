import 'package:flutter/material.dart';

class MenuAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MenuAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(0);

  @override
  Widget build(BuildContext context) {
    return AppBar(elevation: 0, automaticallyImplyLeading: false);
  }
}
