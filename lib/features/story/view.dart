import 'package:app/features/story/widgets/content.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class StoryScreen extends StatelessWidget {
  const StoryScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(body: StoryContent());
  }
}
