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
      alignment: Alignment.center,
      padding: const EdgeInsets.only(top: 32, left: 32, right: 32),
      child: Text('Версия ${packageInfo.version}', style: theme.custom.label),
    );
  }
}
