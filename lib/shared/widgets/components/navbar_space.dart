import 'package:flutter/material.dart';

class NavBarSpace extends StatelessWidget {
  const NavBarSpace({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return SizedBox(height: mediaQuery.padding.bottom);
  }
}
