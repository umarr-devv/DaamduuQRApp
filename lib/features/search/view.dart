import 'package:app/features/search/widgets/appbar.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({
    super.key,
    required this.textController,
    this.uniqueId,
  });

  final TextEditingController textController;
  final String? uniqueId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SearchAppBar(textController: textController, uniqueId: uniqueId),
        ],
      ),
    );
  }
}
