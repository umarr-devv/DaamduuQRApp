import 'package:app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AboutAppDialog extends StatelessWidget {
  const AboutAppDialog({super.key});

  Future show(BuildContext context) async {
    await CustomScrollableSheet.show(context, this);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollableSheet(child: Container());
  }
}
