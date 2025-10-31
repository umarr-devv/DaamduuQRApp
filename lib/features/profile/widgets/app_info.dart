import 'package:app/blocs/blocs.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:package_info_plus/package_info_plus.dart';

class ProfileAppInfo extends StatelessWidget {
  const ProfileAppInfo({super.key});

  PackageInfo get packageInfo => GetIt.I<PackageInfo>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<MessagingCubit, MessagingState>(
      bloc: BlocProvider.of<MessagingCubit>(context),
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.only(top: 48, left: 32, right: 32),
          child: Column(
            spacing: 4,
            children: [
              Text(
                'version: ${packageInfo.version}',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: theme.custom.secondaryForeground,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Clipboard.setData(
                    ClipboardData(text: state.pushToken ?? 'Null'),
                  );
                },
                child: Text(
                  state.pushToken ?? 'Null',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: theme.custom.secondaryForeground,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
