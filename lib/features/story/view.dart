import 'package:app/features/story/widgets/content.dart';
import 'package:auto_route/auto_route.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';

@RoutePage()
class StoryScreen extends StatelessWidget {
  const StoryScreen({super.key, required this.story});

  final StoryScheme story;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: StoryContent(story: story));
  }
}
