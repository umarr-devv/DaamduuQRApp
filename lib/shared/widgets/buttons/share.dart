import 'package:app/shared/widgets/components/components.dart';
import 'package:flutter/material.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({super.key, this.shadow = true});

  final bool shadow;

  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
      icon: Icons.share_rounded,
      shadow: shadow,
      onTap: () {},
    );
  }
}
