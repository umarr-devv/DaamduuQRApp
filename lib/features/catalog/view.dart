import 'package:app/features/catalog/bloc/catalog/catalog_cubit.dart';
import 'package:auto_route/annotations.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';

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
    super.initState();
    cubit = CatalogCubit(establishment: widget.establishment);
    cubit.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
