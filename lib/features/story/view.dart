import 'package:app/features/story/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';

@RoutePage()
class StoryScreen extends StatelessWidget {
  const StoryScreen({super.key, required this.story});

  final StoryScheme story;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StoryAppBar(),
      body: Stack(
        children: [
          StoryContent(story: story),
          Align(alignment: Alignment.topRight, child: StoryActions()),
          Align(alignment: Alignment.bottomCenter, child: StoryDetailButton()),
        ],
      ),
    );
  }
}
