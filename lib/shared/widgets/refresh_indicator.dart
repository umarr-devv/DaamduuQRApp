import 'package:app/shared/theme/theme.dart';
import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomSpinRefreshIndicator extends StatelessWidget {
  const CustomSpinRefreshIndicator({
    super.key,
    required this.onRefresh,
    required this.child,
  });

  final Future Function() onRefresh;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final theme = Theme.of(context);
    final double height = 48 + mediaQuery.padding.top;
    return CustomRefreshIndicator(
      onRefresh: () async {
        await Future.delayed(Duration(milliseconds: 750));
        await onRefresh();
      },
      builder: (context, child, controller) {
        final pullProgress = controller.value.clamp(0.0, 1.0);
        return Stack(
          children: [
            Container(
              width: double.infinity,
              height: height,
              decoration: BoxDecoration(color: theme.custom.primaryColor),
            ),
            Transform.translate(
              offset: Offset(0, height * pullProgress),
              child: child,
            ),
            Positioned(
              top: mediaQuery.padding.top + 4,
              left: 0,
              right: 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 300),
                opacity: controller.isLoading ? 1 : 0,
                child: SpinKitThreeBounce(
                  color: theme.custom.white,
                  // lineWidth: 6,
                  size: 32,
                ),
              ),
            ),
          ],
        );
      },
      child: child,
    );
  }
}
