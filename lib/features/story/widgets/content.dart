import 'package:app/shared/theme/theme.dart';
import 'package:app/utils/file.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryContent extends StatefulWidget {
  const StoryContent({super.key, required this.story});

  final StoryScheme story;

  @override
  State<StoryContent> createState() => _StoryContentState();
}

class _StoryContentState extends State<StoryContent> {
  final controller = StoryController();

  List<StoryItem> get stories => widget.story.content.map((i) {
    final theme = Theme.of(context);
    return StoryItem(
      Container(
        decoration: BoxDecoration(color: theme.custom.black),
        alignment: Alignment.center,
        child: CachedNetworkImage(imageUrl: fileUrl(i.id)),
      ),
      duration: const Duration(seconds: 7),
    );
  }).toList();

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
