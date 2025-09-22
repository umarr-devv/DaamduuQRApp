import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/icon_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CustomScrollableSheet extends StatelessWidget {
  const CustomScrollableSheet({super.key, required this.child, this.color});

  final Widget child;
  final Color? color;

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
      initialChildSize: 0.75,
      maxChildSize: 0.85,
      minChildSize: 0.7,
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
