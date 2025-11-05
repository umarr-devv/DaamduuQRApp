import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CustomScrollableSheet extends StatelessWidget {
  const CustomScrollableSheet({
    super.key,
    this.color,
    this.initialChildSize = 0.85,
    this.maxChildSize = 0.9,
    this.minChildSize = 0.8,
    this.closeButton = true,
    required this.child,
    this.actions = const [],
  });

  final Widget child;
  final Color? color;
  final List<Widget> actions;
  final bool closeButton;

  final double initialChildSize;
  final double maxChildSize;
  final double minChildSize;

  static Future show(BuildContext context, Widget child) async {
    final theme = Theme.of(context);
    showModalBottomSheet(
      context: context,
      backgroundColor: theme.custom.primaryBg,
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
                  if (closeButton) MaybePopButton(close: true),
                  if (!closeButton) SizedBox(),
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
