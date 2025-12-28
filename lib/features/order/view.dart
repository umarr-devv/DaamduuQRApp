import 'package:app/features/order/widgets/widgets.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              OrderAppBar(),
              OrderProductsList(),
              SliverFillRemaining(),
            ],
          ),
          Align(alignment: Alignment.bottomCenter, child: OrderResult()),
        ],
      ),
    );
  }
}
