import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryContent extends StatefulWidget {
  const StoryContent({super.key});

  @override
  State<StoryContent> createState() => _StoryContentState();
}

class _StoryContentState extends State<StoryContent> {
  final controller = StoryController();

  final List<StoryItem> stories = [
    StoryItem(
      Container(decoration: BoxDecoration(color: Colors.amber)),
      duration: const Duration(seconds: 5),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return StoryView(
      storyItems: stories,
      controller: controller,
      onComplete: () {
        AutoRouter.of(context).maybePop();
      },
      onVerticalSwipeComplete: (direction) {
        if (direction == Direction.down) {
          AutoRouter.of(context).maybePop();
        }
      },
    );
  }
}
