import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomLoadingScreen extends StatelessWidget {
  const CustomLoadingScreen({
    super.key,
    required this.child,
    this.loading = false,
  });

  final Widget child;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        if (!loading) child,
        IgnorePointer(
          ignoring: !loading,
          child: AnimatedOpacity(
            opacity: loading ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 275),
            curve: Curves.easeInOut,
            child: Container(
              decoration: BoxDecoration(color: theme.custom.background),
              child: SpinKitRing(color: theme.custom.primary),
            ),
          ),
        ),
      ],
    );
  }
}
