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
    this.actions = const [],
  });

  final Widget child;
  final Color? color;
  final List<Widget> actions;

  final double initialChildSize;
  final double maxChildSize;
  final double minChildSize;

  static Future show(BuildContext context, Widget child) async {
    final theme = Theme.of(context);
    showModalBottomSheet(
      context: context,
      backgroundColor: theme.custom.primaryBackground,
      isScrollControlled: true,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) => child,
    );
  }

  @override
  Widget build(BuildContext context) {
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
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconButton(
                    icon: Icons.close,
                    radius: 12,
                    onTap: () {
                      AutoRouter.of(context).maybePop();
                    },
                  ),
                  Row(spacing: 8, children: actions),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
