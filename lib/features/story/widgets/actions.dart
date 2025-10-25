import 'package:app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class StoryActions extends StatelessWidget {
  const StoryActions({super.key});

  Future share() async {
    // FOR DEBUG
    await SharePlus.instance.share(ShareParams(text: 'Отменный ресторан :)'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24, left: 16, right: 16),
      child: Row(
        spacing: 12,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [MaybePopButton(close: true), ShareButton()],
      ),
    );
  }
}
