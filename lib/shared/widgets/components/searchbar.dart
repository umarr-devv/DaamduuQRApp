import 'package:app/shared/theme/theme.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    this.textController,
    this.focusNode,
    this.enable = true,
    this.autofocus = false,
    this.hintText = '',
  });

  final TextEditingController? textController;
  final FocusNode? focusNode;
  final bool enable;
  final bool autofocus;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      type: MaterialType.transparency,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: theme.custom.background,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          spacing: 4,
          children: [
            Icon(
              FluentIcons.search_28_regular,
              size: 28,
              color: theme.custom.onMuted,
            ),
            Expanded(
              child: SizedBox(
                height: 24,
                child: TextField(
                  enabled: enable,
                  autofocus: autofocus,
                  cursorColor: theme.custom.foreground,
                  controller: textController,
                  focusNode: focusNode,
                  style: theme.custom.label,
                  decoration: InputDecoration(hintText: hintText),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
