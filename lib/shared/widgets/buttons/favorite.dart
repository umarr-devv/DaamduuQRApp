import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/components/components.dart';
import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key, this.shadow = true});

  final bool shadow;

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomIconButton(
      icon: favorite ? Icons.favorite_rounded : Icons.favorite_border_rounded,
      background: theme.custom.primaryBackground,
      foreground: favorite
          ? theme.custom.primaryColor
          : theme.custom.primaryForeground,
      shadow: widget.shadow,
      onTap: () {
        setState(() {
          favorite = !favorite;
        });
      },
    );
  }
}
