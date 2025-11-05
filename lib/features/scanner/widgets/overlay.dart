import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/components/camera_overlay.dart';
import 'package:flutter/material.dart';

class ScannerOverlay extends StatelessWidget {
  const ScannerOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        CustomQRScannerOverlay(overlayColor: theme.custom.opacityBlack),
        Align(
          alignment: Alignment.center,
          child: Transform.translate(
            offset: Offset(0, -200),
            child: Text(
              'Наведите камеру на QR',
              style: theme.custom.labelLarge.copyWith(
                color: theme.custom.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
