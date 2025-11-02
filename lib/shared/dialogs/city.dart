import 'package:app/shared/widgets/screens/screens.dart';
import 'package:flutter/material.dart';

class CitySelectDialog extends StatelessWidget {
  const CitySelectDialog({super.key});

  Future show(BuildContext context) async {
    await CustomScrollableSheet.show(context, this);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollableSheet(child: Container());
  }
}
