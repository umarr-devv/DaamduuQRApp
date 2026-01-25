import 'package:app/core/router/router.dart';
import 'package:app/features/scanner/bloc/scan/scan_cubit.dart';
import 'package:app/features/scanner/widgets/info.dart';
import 'package:app/features/scanner/widgets/widgets.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ScannerScreen extends StatefulWidget {
  const ScannerScreen({super.key});

  @override
  State<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  final scanCubit = ScanCubit();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MultiBlocProvider(
      providers: [BlocProvider.value(value: scanCubit)],
      child: BlocListener<ScanCubit, ScanState>(
        bloc: scanCubit,
        listener: (context, state) {
          if (state is ScanLoaded && state.establishment != null) {
            AutoRouter.of(
              context,
            ).replace(CatalogRoute(establishment: state.establishment!));
          }
        },
        child: Scaffold(
          backgroundColor: theme.custom.black,
          appBar: ScannerAppBar(),
          body: Stack(
            children: [
              ScannerCamera(),
              ScannerOverlay(),
              ScannerAction(),
              ScannerInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
