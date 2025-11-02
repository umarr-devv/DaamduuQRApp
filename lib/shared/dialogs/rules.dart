import 'package:app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AppRulesDialog extends StatelessWidget {
  const AppRulesDialog({super.key});

  Future show(BuildContext context) async {
    await CustomScrollableSheet.show(context, this);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollableSheet(child: Container());
  }
}
