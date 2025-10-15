import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.textController,
    this.focusNode,
    this.enable = true,
    this.autofocus = false,
    this.hintText = '',
  });

  final TextEditingController textController;
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
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: theme.custom.primaryBackground,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          spacing: 8,
          children: [
            SvgPicture.asset(
              'assets/svg/search.svg',
              height: 20,
              width: 20,
              colorFilter: ColorFilter.mode(
                theme.custom.secondaryForeground,
                BlendMode.srcIn,
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 24,
                child: TextField(
                  enabled: enable,
                  autofocus: autofocus,
                  cursorColor: theme.custom.primaryForeground,
                  controller: textController,
                  focusNode: focusNode,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: theme.custom.primaryForeground,
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(0),
                    hintText: hintText,
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: theme.custom.secondaryForeground,
                    ),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
