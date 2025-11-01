import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:package_info_plus/package_info_plus.dart';

class ProfileAppInfo extends StatelessWidget {
  const ProfileAppInfo({super.key});

  PackageInfo get packageInfo => GetIt.I<PackageInfo>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.only(top: 48, left: 32, right: 32, bottom: 24),
      child: Text(
        'version: ${packageInfo.version}',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: theme.custom.secondaryForeground,
        ),
      ),
    );
  }
}
