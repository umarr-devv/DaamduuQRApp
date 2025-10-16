import 'package:app/features/scanner/bloc/cubit/barcode_cubit.dart';
import 'package:app/features/scanner/widgets/info.dart';
import 'package:app/features/scanner/widgets/widgets.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ScannerScreen extends StatelessWidget {
  const ScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => BarcodeCubit())],
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
    );
  }
}
