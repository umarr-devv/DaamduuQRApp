import 'package:app/features/scanner/bloc/cubit/barcode_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScannerInfo extends StatelessWidget {
  const ScannerInfo({super.key, required this.cubit});

  final BarcodeCubit cubit;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final theme = Theme.of(context);
    return BlocBuilder<BarcodeCubit, BarcodeState>(
      bloc: cubit,
      builder: (context, state) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.only(
              bottom: mediaQuery.padding.bottom + 16,
              left: 16,
              right: 16,
            ),
            child: Text(
              state.barcode ?? '',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: theme.custom.white,
              ),
            ),
          ),
        );
      },
    );
  }
}
