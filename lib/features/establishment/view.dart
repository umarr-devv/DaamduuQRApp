import 'package:app/features/establishment/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class EstablishmentScreen extends StatelessWidget {
  const EstablishmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          EstablishmentAppBar(),
          SliverToBoxAdapter(child: EstablishmentTitle()),
          SliverFillRemaining(),
        ],
      ),
    );
  }
}
