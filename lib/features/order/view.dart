import 'package:app/features/order/widgets/widgets.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key, this.isInMenu = true});

  final bool isInMenu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          OrderAppBar(isInMenu: isInMenu),
          OrderProductsList(),
        ],
      ),
    );
  }
}
