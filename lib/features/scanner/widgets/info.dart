import 'package:app/features/scanner/bloc/scan/scan_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScannerInfo extends StatelessWidget {
  const ScannerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<ScanCubit>(context);
    final mediaQuery = MediaQuery.of(context);
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.only(
        bottom: mediaQuery.padding.bottom + 16,
        left: 16,
        right: 16,
      ),
      alignment: Alignment.bottomCenter,
      child: BlocBuilder<ScanCubit, ScanState>(
        bloc: cubit,
        builder: (context, state) {
          if (state is ScanLoading) {
            return CircularProgressIndicator(color: theme.custom.onPrimary);
          } else if (state is ScanFailure) {
            return Row(
              spacing: 6,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FluentIcons.error_circle_24_regular,
                  color: theme.custom.onPrimary,
                  size: 20,
                ),
                Text(
                  'Некорректный QR',
                  style: TextStyle(color: theme.custom.onPrimary),
                ),
              ],
            );
          } else {
            return Text(
              'Наведите камеру на QR',
              style: TextStyle(color: theme.custom.onPrimary),
            );
          }
        },
      ),
    );
  }
}
