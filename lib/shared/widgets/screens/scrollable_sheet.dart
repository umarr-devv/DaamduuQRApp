import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CustomScrollableSheet extends StatelessWidget {
  const CustomScrollableSheet({
    super.key,
    this.color,
    this.initialChildSize = 0.85,
    this.maxChildSize = 0.9,
    this.minChildSize = 0.8,
    required this.child,
  });

  final Widget child;
  final Color? color;

  final double initialChildSize;
  final double maxChildSize;
  final double minChildSize;

  static Future show(BuildContext context, Widget child) async {
    final theme = Theme.of(context);
    showModalBottomSheet(
      context: context,
      backgroundColor: theme.custom.primaryBackground,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(22)),
      ),
      builder: (context) => child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: initialChildSize,
      maxChildSize: maxChildSize,
      minChildSize: minChildSize,
      builder: (context, controller) {
        return Stack(
          children: [
            SingleChildScrollView(
              controller: controller,
              child: SizedBox(width: double.infinity, child: child),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: CustomIconButton(
                  icon: Icons.close,
                  size: 20,
                  radius: 64,
                  background: color ?? theme.custom.secondaryBackground,
                  foreground: theme.custom.secondaryForeground,
                  onTap: () {
                    AutoRouter.of(context).maybePop();
                  },
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: 6,
                  width: 128,
                  decoration: BoxDecoration(
                    color: color ?? theme.custom.secondaryBackground,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: theme.custom.shadowColor,
                        offset: Offset(1, 1),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
