import 'package:app/features/establishment/bloc/establishment/establishment_cubit.dart';
import 'package:app/features/establishment/widgets/widgets.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class EstablishmentScreen extends StatefulWidget {
  const EstablishmentScreen({super.key, required this.establishment});

  final EstablishmentScheme establishment;

  @override
  State<EstablishmentScreen> createState() => _EstablishmentScreenState();
}

class _EstablishmentScreenState extends State<EstablishmentScreen> {
  final scrollController = ScrollController();
  late final EstablishmentCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = EstablishmentCubit(establishment: widget.establishment);
    cubit.update();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MultiBlocProvider(
      providers: [BlocProvider.value(value: cubit)],
      child: Scaffold(
        backgroundColor: theme.custom.primaryBackground,
        floatingActionButton: EstablishmentButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
            SliverToBoxAdapter(child: EstablishmentStories()),
            SliverToBoxAdapter(child: CustomDivider()),
            SliverToBoxAdapter(
              child: EstablishmentContacts(establishment: widget.establishment),
            ),
            SliverFillRemaining(),
          ],
        ),
      ),
    );
  }
}
