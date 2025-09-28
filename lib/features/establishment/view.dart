import 'package:app/features/establishment/widgets/widgets.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';

@RoutePage()
class EstablishmentScreen extends StatefulWidget {
  const EstablishmentScreen({super.key, required this.establishment});

  final EstablishmentScheme establishment;

  @override
  State<EstablishmentScreen> createState() => _EstablishmentScreenState();
}

class _EstablishmentScreenState extends State<EstablishmentScreen> {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.custom.primaryBackground,
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          EstablishmentAppBar(
            establishment: widget.establishment,
            scrollController: scrollController,
          ),
          SliverToBoxAdapter(
            child: EstablishmentTitle(establishment: widget.establishment),
          ),
          SliverToBoxAdapter(child: EstablishmentContacts()),
          HomePopularFoodsList(),
          SliverFillRemaining(),
        ],
      ),
    );
  }
}
