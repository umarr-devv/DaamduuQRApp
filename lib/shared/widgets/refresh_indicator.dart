import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/loading_screen.dart';
import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';

class CustomScreenRefreshIndicator extends StatelessWidget {
  const CustomScreenRefreshIndicator({
    super.key,
    required this.onRefresh,
    required this.child,
    this.loading = false,
  });

  final Future Function() onRefresh;
  final Widget child;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomRefreshIndicator(
      onRefresh: onRefresh,
      builder: (context, child, controller) {
        final progress = controller.value.clamp(0, 1);
        return CustomLoadingScreen(
          loading: loading,
          child: Stack(
            children: [
              Container(
                height: 48,
                decoration: BoxDecoration(color: theme.custom.primaryColor),
              ),
              Transform.translate(
                offset: Offset(0, (48 * progress).toDouble()),
                child: child,
              ),
            ],
          ),
        );
      },
      child: child,
    );
  }
}
