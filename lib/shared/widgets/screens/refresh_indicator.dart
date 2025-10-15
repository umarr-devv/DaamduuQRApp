import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';

import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';

class CustomScreenRefreshIndicator extends StatelessWidget {
  const CustomScreenRefreshIndicator({
    super.key,
    required this.onRefresh,
    required this.child,
    this.refreshing = false,
    this.error = false,
    this.retry,
  });

  final Future Function() onRefresh;
  final Widget child;
  final bool refreshing;
  final bool error;
  final void Function()? retry;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (error) {
      return ErrorScreen(retry: retry);
    }
    return CustomRefreshIndicator(
      onRefresh: onRefresh,
      builder: (context, child, controller) {
        final progress = controller.value.clamp(0, 1);
        return CustomLoadingScreen(
          loading: refreshing,
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
