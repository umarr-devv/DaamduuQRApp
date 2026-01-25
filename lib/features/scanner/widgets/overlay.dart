import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/components/camera_overlay.dart';
import 'package:flutter/material.dart';

class ScannerOverlay extends StatelessWidget {
  const ScannerOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomQRScannerOverlay(
      overlayColor: theme.custom.black.withValues(alpha: 0.25),
    );
  }
}
