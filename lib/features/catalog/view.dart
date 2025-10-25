import 'package:app/features/catalog/bloc/catalog/catalog_cubit.dart';
import 'package:app/features/catalog/widgets/widgets.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:auto_route/annotations.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key, required this.establishment});

  final EstablishmentScheme establishment;

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  late final CatalogCubit cubit;

  @override
  void initState() {
    cubit = CatalogCubit(establishment: widget.establishment);
    cubit.init();
    super.initState();
  }

  @override
  void dispose() {
    cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MultiBlocProvider(
      providers: [BlocProvider.value(value: cubit)],
      child: Scaffold(
        backgroundColor: theme.custom.secondaryBackground,
        body: CustomScrollView(slivers: [CatalogAppBar(), CatelogProducts()]),
      ),
    );
  }
}
