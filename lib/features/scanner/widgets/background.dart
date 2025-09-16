import 'package:app/shared/clipps/quad.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class ScannerBackground extends StatelessWidget {
  const ScannerBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ClipPath(
      clipper: QuadClipper(quadSize: 240),
      child: Container(color: theme.custom.opacityBlack),
    );
  }
}
